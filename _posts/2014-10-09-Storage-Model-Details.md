---
layout: post
title: Storage Model Details
description: "Some details of the new demand-side storage model."
modified: 2014-10-09
category: articles
share: true
tags: [BGE, Green-Button, data, electricity, dynamic-pricing, storage, model, demand-side]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

This post fills in some more details of the <a href='{{ site.url }}/articles/Intro-To-Storage-Model'>demand-side storage model</a>.
 
In the last post I presented a flow chart of how the logic works but didn't give a diagram of what the physical system might look like.  That's below.

<center>
<figure>
  <a href='{{ site.url }}/images/2014-10/physical_system.jpg'><img src='{{ site.url }}/images/2014-10/physical_system.jpg'></a>
  <figcaption>Demand-side storage physical system.</figcaption>
</figure>
</center>

I've illustrated the switch as being a separate component so we can see that electricity could bypass actually being inverted and stored (electricity from the grid sometimes goes directly to the demand).  In reality, the inverter/switch/charge controller would be one system.  This unit and the batteries would be the initial costs for the system.

## Model Parameters

For electricity going straight to serve demand (not being stored first), there are essentially no additonal losses.  However, batteries only accept DC electricity, so we need an inverter to turn the AC off the grid to DC and back.  There are losses associated with this conversion, and the batteries themselves are lossy.  For now I've set these efficiencies as constants, but implemented them in functions so they could in the future get more sophisticated modeling (charging efficiency for batteries is dependent on depth of charge).  The nominal efficiency values are taken from <a href='http://www.amazon.com/Renewable-Efficient-Electric-Power-Systems/dp/0471280607/ref=sr_1_2?ie=UTF8&qid=1412769771&sr=8-2&keywords=renewable+and+efficient+electric+power+systems'>Renewable and Efficient Electric Power Systems by Gilbert Masters</a>.

{% highlight python %}

def inverter_efficiency(direction):
    if direction == 'charging':
        eff = .85
    elif direction == 'discharging':
        eff = .85
    return eff

def battery_efficiency(direction):
    if direction == 'charging':
        eff = .85
    elif direction == 'discharging':
        eff = .85
    return eff

{% endhighlight %}
 
There are also several other system parameters that need to be initialized, including the size of the storage, costs, etc.  In future analyses these variables can be varied to assess the effects on costs and energy.

{% highlight python %}

inverter_controller_cost = 2000. # ballpark
storage_cost_perkWh = 200. / 1.2 # cost per kWh; amazon.com lead-acid deep cycle
storage_size_kWh = 9.  # storage size in kWh
P_max_charge = (100. / 3.) * 12. / 1000. # C/3 charge rate at 12 V (converted to kW)
E_min_depth = 0.2 # maximum depth of discharge in percent
E_min = E_min_depth * storage_size_kWh

{% endhighlight %}

## Results

Once the model has calculated all the energy flows for each hour over the course of the year, I calculate a set of key properties of the system behavior.  These results are shown in the table below.  These are the characteristics I'll be interested in as the system parameters described above are varied (though I may modify this set).

* '% Peak Demand Battery': Percent of the total peak demand over the year served from the battery
* '% Peak kWh Shaved': Percent of the total demand during peak hours removed from the grid
* '% Purchased During Off-Peak': Percent of annual electricity purchased during off-peak hours
* '% Purchased During Peak': Percent of annual electricity purchased during peak hours
* 'Annual System Eff': Total annual demand divided by total annual electricity purchased
* 'Annual Var Cost': Annual electricity cost
* 'Hours Battery Depleted': Number of hours in the year that battery is drained to maximum depth of discharge
* 'Hours Battery Full': Number of hours in the year that battery is fully charged
* 'Hours on Battery Only': Number of hours in the year that demand is served by battery alone
* 'Initial Cost': Initial system cost (inverter + batteries)
* 'Peak kWh Shaved': Total electricity during peak hours removed from the grid
* 'Total kWh Purchased': Total annual electricity purchased

Below are some initial values from the simulation with a storage size of 9 kWh.

{% highlight python %}

{   '% Peak Demand Battery': 0.62841144933029902,
    '% Peak kWh Shaved': 0.54435814423603923,
    '% Purchased During Off-Peak': 0.90852312473716113,
    '% Purchased During Peak': 0.091476875262838833,
    'Annual System Eff': 0.93101271339465896,
    'Annual Var Cost': 572.33,
    'Hours Battery Depleted': 1087,
    'Hours Battery Full': 1863,
    'Hours on Battery Only': 1169,
    'Initial Cost': 3500.0,
    'Peak kWh Shaved': 979.38848750000284,
    'Total kWh Purchased': 8961.5382045414281    }

{% endhighlight %}

For these initial values, what stood out to me was that I removed 54% of the residence's annual peak demand from the grid (this is the '% Peak kWh Shaved').  This is the reason utilities might want to think about incentivizing residential customers to purchase grid-tied battery systems such as this (beyond just the time-of-use-pricing incentive itself).  I should say that the current model is agnostic to exactly which peak hours load is being shaved from - it just uses the battery first until it's depleted and then switches to grid during peak hours.  Utilities would want to be a bit more sensitive to this, since their peak time-of-use currently starts at 10am weekdays in the summer but the actual "peak" won't hit until around 4pm.  In the current model I've created, the battery is used up first so I wouldn't be shaving peak load at 4pm.  This could be addressed with some logic that is a bit more clever than what I've currently got.


