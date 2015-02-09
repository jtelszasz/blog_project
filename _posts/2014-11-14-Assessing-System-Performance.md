---
layout: post
title: Assessing Demand-Side Storage System Performance
description: "Varying model parameters in order to assess benefits of demand-side storage."
modified: 2014-11-14
category: articles
share: true
tags: [BGE, Green-Button, data, electricity, dynamic-pricing, storage, model, demand-side]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

By varying parameters of the <a href='{{ site.url }}/articles/Intro-To-Storage-Model'>demand-side storage model</a> we can determine the economic plausibility and benefits of home grid-tied batteries.  

While the actual logic and functions are in separate Python modules, I'm doing this analysis in an <a href='http://nbviewer.ipython.org/github/jtelszasz/demandside_storage/blob/master/analysis.ipynb'>iPython notebook</a> that you can check out for more detail and thought process.
 
I set up some of summary metrics I was interested in in the <a href='{{ site.url }}/articles/Storage-Model-Details'>last post</a> .  One that I didn't have on that list that is an important economic indicator is the simple payback period, which is the number of years it would take to break even on the initial investment based on the yearly savings.

<center>
<img src="http://latex.codecogs.com/png.latex?PBP=\frac{Initial%20Investment}{Annual%20Variable%20Cost%20Savings}" alt="PBP=\frac{Initial%20Investment}{Annual%20Variable%20Cost%20Savings}"/>
</center>

The summary metrics I've calculated should indicate the benefits of having a home battery system to the consumer/household as well as the grid (system operator and grid).  Of course, these are going to be particular to the load profile I'm using (Green Button sample data), but another one-year hourly load profile could easily be supplanted to see how it would work out for other buildings.  

## Summary Metrics v. Storage Capacity

One question that can be asked of the model is how certain summary metrics vary with the total battery capacity.  For example, an increase in battery size would allow the building to purchase more of the cheaper electricity during off-peak hours increasing the annual savings, but the initial investment also increases.  

All of the other parameters are held constant, with battery and inverter efficiencies during charging and discharging all set to 0.85 (the "inverter_efficiency" and "battery_efficiency" below are function handles).  The charge rate estimate is assuming it take 8 hours to fully charge the battery.  I've estimated the cost of deep-discharge lead acid batteries as being about $166 per kilowatt-hour of storage (based on a quick Amazon.com search that dug up $200 for a 1.2 kWh battery).  The model currently isn't sophisticated enough to vary the charge and discharge rates based on voltage and current as should be done, but this should suffice for a rough estimate.  For an initial estimate, I also have not factored in battery replacement to the payback period, though this should have a substantial effect and I'll need to do this at some point.

{% highlight python %}
    system_param = {
        'Inverter Cost' : 1500., # ballpark
        'Storage Cost' : 200. / 1.2, # cost per kilowatt-hour based on link above
        'Storage Size' : bat_size,  # storage size in kilowatt-hours
        'Max Charge Rate' : bat_size / 8.,
        'Max DOD' : max_dod, # DOD
        'Bat Depleted' : max_dod * bat_size,
        'Inverter Efficiency' : inverter_efficiency,
        'Battery Efficiency' : battery_efficiency,
    }
{% endhighlight %}

In the <a href='http://nbviewer.ipython.org/github/jtelszasz/demandside_storage/blob/master/analysis.ipynb'>analysis notebook</a> I create an array with all of the battery sizes, and loop through them each time setting the bat_size variable to the next size in the array.  Each time, the model creates the output over the entire year (all 8,760 hours) and then calculates the summary metrics.  The result is a dataframe of all the summary metrics indexed by summary size.

<center>
<figure>
  <a href='{{ site.url }}/images/2014-11/metrics_snapshot_stor_cap.jpg'><img src='{{ site.url }}/images/2014-11/metrics_snapshot_stor_cap.jpg'></a>
  <figcaption>Simple payback period for demand-side storage (home battery) system.</figcaption>
</figure>
</center>

Now it's easy to create some plots to illustrate how these metrics change with storage capacity.

### Cost Savings and Payback Period

The expectation is that there are diminishing returns, since there is a limited number of peak hours energy demand that can be supplied by electricity purchased during off-peak hours, while of course the amount of battery storage we can purchase is unlimited.  Based on this plot, the most storage we should purchase is 15 kWh worth.  The percent savings calculated is with respect to the default static BGE residential electricity prices, in other words what this home would have paid over the course of the year in electricity supplied (not including fixed tariffs and charges).

<center>
<figure>
  <a href='{{ site.url }}/images/2014-11/cost_savings_stor_cap.png'><img src='{{ site.url }}/images/2014-11/cost_savings_stor_cap.png'></a>
  <figcaption>Annual cost savings for demand-side storage (home battery) system.</figcaption>
</figure>
</center>

In general, the payback periods are a bit longer than I thought they would be.  There's a clear optimum solution at a storage capacity of 5 kWh with the payback period being about 14.5 years.  What's really driving the cost effectiveness (I think) is the difference between the peak and off-peak cost of electricity.  A wider difference between these prices will make it more cost effective to purchase storage and electricity during off-peak hours.

<center>
<figure>
  <a href='{{ site.url }}/images/2014-11/PBP_stor_cap.png'><img src='{{ site.url }}/images/2014-11/PBP_stor_cap.png'></a>
  <figcaption>Simple payback period for demand-side storage (home battery) system.</figcaption>
</figure>
</center>

### Grid Benefits (Load Shaving)

This pretty closely mirrors the cost savings, and understandably so since the costs are directly proportional to the amount of electricity being removed from peak-hours and purchased instead during off-peak hours.  At 15 kWh of storage we've just about maxed out the amount of peak time kilowatt-hours we can shave, which is all off the electricity demand for this house occuring during peak hours.  This is about 1800 kWh for this house's load profile.

<center>
<figure>
  <a href='{{ site.url }}/images/2014-11/peak_shaved_stor_cap.png'><img src='{{ site.url }}/images/2014-11/peak_shaved_stor_cap.png'></a>
  <figcaption>Peak load shaving for demand-side storage (home battery) system.</figcaption>
</figure>
</center>

### Efficiency

Since electricity purchased simultanesously with demand (not shifted using storage) doesn't go through any other equipment, the system's efficiency is effectively 100% since all the electricity purchased goes directly to the serve the demand.  However, electricity purchased during off-peak hours for use at a later time first goes through the inverter to become DC, then is stored in the battery (also lossy), and takes the opposite process on the way out.  That means that the quantity of kilowatt-hours purchased from the grid becomes higher as more electricity is bought and stored.  For this reason, the "efficiency" (the total annual kWh demand divided by the total kWh purchased from the grid) drops as storage size increases. 

<center>
<figure>
  <a href='{{ site.url }}/images/2014-11/sys_eff_stor_cap.png'><img src='{{ site.url }}/images/2014-11/sys_eff_stor_cap.png'></a>
  <figcaption>Total kWh purchased during year for demand-side storage (home battery) system.</figcaption>
</figure>
</center>

 This is an important (albeit predictable) result since it means we've effectively increased the carbon footprint of the home, assuming the electricity mix is dominated by carbon-intensive power sources.  What such a system could allow for, however, is that intermittent renewable resources could more readily integrate with storage acting as a buffer between demand and intermittent supply.







