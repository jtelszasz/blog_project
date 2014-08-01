---
layout: post
title: Energy Use and Weather
description: "Looking at the correlation between weather and energy (electricity) consumption."
modified: 2014-04-18
category: articles
tags: [BGE, smart-meters, energy, data, electricity]
image:
  feature: texture-feature-05.jpg
  credit: Texture Lovers
  creditlink: http://texturelovers.com
---

<section id="table-of-contents" class="toc">
  <header>
    <h3>Contents</h3>
  </header>
<div id="drawer" markdown="1">
*  Auto generated table of contents
{:toc}
</div>
</section><!-- /#table-of-contents -->

Steph and I moved at the end on May 23.  I didn't manage to grab the data for the last three weeks of May before changing apartments (and therefore BGE accounts), so I missed out on those three weeks of data.  However, we've now been there just over two months and so we've got some A/C load data to work with.

### Physical Differences in Apartments

Our old and new apartments are less than half a mile apart on the same street that runs north and south (St. Paul Street in Baltimore).  There are some important differences of note between the two apartments.  The old aparment was much smaller, though both have relatively high ceilings.  The old apartment used 

* Size
* Building Envelope and Fenestration
* Space Heating
* Space Cooling
* Lighting
* Appliances
* Usage 

<figure>
  <a href="{{ site.url }}/images/Elec_and_Temp_TS.png"><img src="{{ site.url }}/images/Elec_and_Temp_TS.png"></a>
  <figcaption>Time series of hourly electricity consumption and outdoor temperature.</figcaption>
</figure>

It looks as if there's an inverse relationship between the outdoor temperature and the apartment's electricity consumption.  We'd expect this even in the winter for our apartment due to our use of electric resistance heating.  (This is a minority case as many buildings, whether commercial, multi-family, or single-family residential, burn fossil fuels directly for providing heat.  As a precursor to a potential future analysis I'd like to work on using these data, there's often a debate whether the GHG emissions resulting from electric resistance heating are in fact on par or greater with burning natural gas directly in a furnace on site.  This is due to losses in the electric grid - first the combustion and thermal efficiency of the generation plant itself, then the various lossy inverters required for changing voltages and losses in the transmission lines themselves.  While this is an important question to ask, the broader picture and motivation should be the integration of renewables and storage to provide heat cleanly - electric resistance allows for this integration.)

Back to the temperature vs. electricity use question.  To start digging into the relationship a bit, we'll start with the scatter plot.

<figure>
  <a href="{{ site.url }}/images/Elec_and_Temp_Scatter.png"><img src="{{ site.url }}/images/Elec_and_Temp_Scatter.png"></a>
  <figcaption>Scatter plot of hourly electricity consumption and outdoor temperature.</figcaption>
</figure>

As we'd expect, as the outdoor temperature increases, the electricity use generally decreases.  

### Statistical Model

To take a first crack at quantifying the relationship we can use an ordinary least squares regression to try and quantify that relationship.  As is typically the case with Python, someone has already coded the tools necessary so I just have to import the Statsmodels module and use the right tool.

Running the following block of code...

{% highlight python %}

model = sm.OLS(elec_and_weather['USAGE'],sm.add_constant(elec_and_weather['tempF']))
res = model.fit()
print res.summary()

{% endhighlight %}

...fits the model to our data and spits out the information about the model.

<figure>
  <a href="{{ site.url }}/images/Elec_and_Temp_OLS_Output.png"><img src="{{ site.url }}/images/Elec_and_Temp_OLS_Output.png"></a>
  <figcaption>Ordinary least squares regression model.</figcaption>
</figure>

This is what the model actually looks like on top of the data.

<figure>
  <a href="{{ site.url }}/images/Elec_and_Temp_OLS.png"><img src="{{ site.url }}/images/Elec_and_Temp_OLS.png"></a>
  <figcaption>Linear ordinary least squares regression model for electricity consumption using outdoor temperature.</figcaption>
</figure>


