---
layout: post
title: Assessing Demand-Side Storage System Performance
description: "Varying model parameters in order to assess benefits of demand-side storage."
modified: 2014-11-07
category: articles
share: true
tags: [dynamic-pricing, storage, model, demand-side]
image:
  feature: design/abstract-12.jpg
  credit: dargadgetz
  creditlink: http://http://www.dargadgetz.com/ios-8-abstract-wallpaper-pack-for-iphone-5s-5c-and-ipod-touch-retina/
---

By varying parameters of the <a href='{{ site.url }}/articles/Intro-To-Storage-Model'>demand-side storage model</a> we can determine the economic plausibility and benefits of home grid-tied batteries.  While the actual logic and functions are in separate Python modules, I'm doing this analysis in an <a href='http://nbviewer.ipython.org/github/jtelszasz/demandside_storage/blob/master/analysis.ipynb'>iPython notbook</a> that you can check out for more detail and thought process.
 
I set up some of summary metrics I was interested in in the <a href='{{ site.url }}/articles/Storage-Model-Details'>last post</a> .  One that I didn't have on that list that is an important economic indicator is the simple payback period, which is the number of years it would take to break even on the initial investment based on the yearly savings.

<center>
<img src="http://latex.codecogs.com/png.latex?PBP=\frac{Initial%20Investment}{Annual%20Variable%20Cost%20Savings}" alt="PBP=\frac{Initial%20Investment}{Annual%20Variable%20Cost%20Savings}"/>
</center>

The summary metrics I've calculated should indicate the benefits of having a home battery system to the consumer/household as well as the grid (system operator and grid).  Of course, these are going to be particular to the load profile I'm using (Green Button sample data), but another one-year hourly load profile could easily be supplanted to see how it would work out for other buildings.  

## Varying Storage Size

One question that can be asked of the model is how certain summary metrics vary with the total battery capacity.  For example, an increase in battery size would allow the building to purchase more of the cheaper electricity during off-peak hours increasing the annual savings, but the initial investment also increases.  

I've estimated the cost of deep-discharge lead acid batteries as being about $166 per kilowatt-hour of storage (based on a quick Amazon.com search that dug up $200 for a 1.2 kWh battery).  The model currently isn't sophisticated enough to vary the charge and discharge rates based on voltage and current as should be done, but this should suffice for a rough estimate.  For an initial estimate, I also have not factored in battery replacement to the payback period, though this should have a substantial effect and I'll need to do this at some point.

<center>
<figure>
  <a href='{{ site.url }}/images/2014-11/PBP.png'><img src='{{ site.url }}/images/2014-11/PBP.png'></a>
  <figcaption>Demand-side storage physical system.</figcaption>
</figure>
</center>




