---
layout: post
title: Intro to Storage Model
description: "Introducing the demand-side storage model."
modified: 2014-09-23
category: articles
share: true
tags: [BGE, Green-Button, data, electricity, dynamic-pricing, storage, model, demand-side]
image:
  feature: texture-feature-04.jpg
  credit: Texture Lovers
  creditlink: http://texturelovers.com
---

Buying lead-acid batteries and switching to one of <a href='{{ site.url }}/articles/BGE-Pricing'>BGE's time-of-use pricing plans</a> may be a very good idea indeed.
 
BGE (and many other utilities in the U.S.) are now offering a time-of-use pricing plan in which the price you pay for electricity depends on what time of day or season you are purchasing it.  This is one of the so-called "demand-side strategies" that could help utilities reduce peak loads and prevent blackouts.  In a <a href='{{ site.url }}/articles/Should-I-Switch-To-TOU-Pricing'>previous post</a>, I looked at whether it would make financial sense for me to switch over to one of these plans.
 
One can imagine taking further advantage of these plans by purchasing most or all electricity during off-peak (cheap) hours without having to buy much or any during peak hours.  In order to explore how this might work and how beneficial it would be, I built a model in Python that simulates the hourly energy flows for a home with lead-acid battery storage.

There are two sources of data that drive the model.  First, I’ve used one of the <a href='{{ site.url }}/articles/Feeding-The-Data-Monster'>Green Button sample data files</a>, specifically the one for an inland, single-family residence.  This is an hourly electricity demand profile for the whole residential building for all of 2011.  Second, I’ve again used <a href='{{ site.url }}/articles/BGE-Pricing'>BGE’s time-of-use pricing schemes</a> to determine peak hours and costs.  Some of the ideas are based on <a href='http://sel.columbia.edu/matlab-assignment-1'>a Matlab assignment I worked on in grad school</a>.  While I no longer have access to the top tier journals (Elsevier is a capitalist racket), I did find a couple papers <a href='https://www.thlab.net/wp-content/uploads/publications/pub_19.pdf'>here</a> and <a href='http://www.ecs.umass.edu/~irwin/smartcharge.pdf'>here</a> that are using similar algorithms.
 
I’ve drawn out a flow chart to show how the model works.  During off-peak times, the demand is served directly from the grid and if the battery isn’t full, extra energy is purchased to charge the battery (there is a maximum rate at which this can occur).  During peak times, energy is first used out of the battery to serve the demand.  Only when the battery is drained (to an acceptable charge level, say 30%) is energy then purchased from the grid to serve demand directly.  No energy is purchased to charge the battery during peak hours.

<center>
<figure>
  <a href='{{ site.url }}/images/2014-09/Demand-Side Storage Model Flow Chart.jpg'><img src='{{ site.url }}/images/2014-09/Demand-Side Storage Model Flow Chart.jpg'></a>
  <figcaption>Flow chart for storage simulation.</figcaption>
</figure>
</center>

If seeing the logic implemented in code would help, it's below.  I'm not going to put all those functions below as well, needless to say they assign the proper values at each hour.  You could also get them from me on <a href='https://github.com/jtelszasz/demandside_storage'>Github</a>.

{% highlight python %}

for i in range(0,len(results['USAGE'])):

        # If at the end of the time series, break out
        if i == len(results['USAGE'])-1:
            break

        # Peak hours operation
        elif results['period'][i] == 'peak' or results['period'][i] == 'int':

            # If there is enough available in the battery, use it first
            if (results['storage_available'][i] - E_min) >= results['USAGE'][i]:
                results = peak_battery_only(results, i)

            # Otherwise, use up remainder in battery and then buy from grid
            else:
                results = peak_battery_and_grid(results, i)

        # Off-peak hours operation
        else:

            # If the battery isn't full...
            if results['storage_available'][i] < storage_size_kWh:

                # ... top off the battery if it is nearly full...
                if storage_size_kWh - results['storage_available'][i] <= P_max_charge:
                    results = offpeak_store_to_cap(results, i)
                
                # ... otherwise, charge as much as possible in one hour.
                else:                    
                    results = offpeak_store_partial(results, i)
            
            # If the battery is full, then it isn't necessary to purchase extra.
            else:                
                results = offpeak_battery_full(results, i)
 
{% endhighlight %}

In the plot below, I’ve shown the behavior of the system for a typical summer day.  Peak hours are shaded.  As you can see, during off-peak hours additional energy is purchased in order to recharge the battery.  During peak hours, the battery is discharged preferentially before purchasing any peak-hour electricity in order to minimize cost.
 
<center>
<figure>
  <a href='{{ site.url }}/images/2014-09/Daily_Energy_State_13-July-2011.png'><img src='{{ site.url }}/images/2014-09/Daily_Energy_State_13-July-2011.png'></a>
  <figcaption>Model behavior for summer weekday, with peak period shaded in gray.</figcaption>
</figure>
</center>

In the above plot there are two energy flows from the grid - one going to serve demand directly and the other to storage.  (There are actually three shown since I separate peak from off-peak, but you get the idea.)  To make a bit clearer how much energy is being purchased at each hour, I've summed those two quanities and plotted below.  Clearly in the off-peak hours, a bit extra is being purchased to charge the batteries.  During the first part of the peak period, nothing has to be purchased from the grid since the battery is serving the demand.  Once that is depleted, energy has to be purchased during the remainder of the peak period.

<center>
<figure>
  <a href='{{ site.url }}/images/2014-09/Daily_Energy_Purchased_13-July-2011.png'><img src='{{ site.url }}/images/2014-09/Daily_Energy_Purchased_13-July-2011.png'></a>
  <figcaption>Amount of energy purchased in storage model, with peak period shaded in gray.</figcaption>
</figure>
</center>

It's important to remember that the actual quantity of killowatt-hours of electricity purchased over the course of the year isn't different than without storage, it's just being purchased from the grid at different hours.  The consumer doesn't need to modify their gluttonous behavior in order to make this work.  The benefit to the consumer is saving money, and the benefit to the utility is shaving peak loads.  

A bunch of questions are already popping up in my head:

* What is the payback period for the battery system?
* How do the size of the battery and the peak-off-peak cost differential affect the payback period?
* What percent of hours/energy over the course of the year come through the storage system as opposed to directly from grid?
* How much storage is needed so that peak hour electricity is never purchased and how much does this cost?  What is the payback period?
* How does the cost of the system change with percent of peak-hour demand served by storage?
