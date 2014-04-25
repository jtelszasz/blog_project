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

Stepping back, let's take a look at what the actual time series of the smart meter electricity data looks like for my apartment.  I'll also bring in the hourly outdoor temperature as measured at Baltimore-Washington International Airport (less than 10 miles away as the crow flies).  The data are obtained via the API at <a href='http://www.wunderground.com/weather/api'>Weather Underground</a>.  Again, you can follow along my line (curve, circle, some other obscure geometry) of thinking by taking a look at the <a href='http://nbviewer.ipython.org/github/jtelszasz/my_energy/blob/master/My_Energy_And_Weather.ipynb?create=1'>iPython notebook</a>.

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

## Statistical Model

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

So our R^2 shows that 48% of the variation in the electricity use can be explained by the outdoor temperature alone.  The remaining 52% would have to be explained by other variables or natural variability.

# Engineering Model

What are we saying by assuming that the model should be linear?  That (all else being equal) for every degree increase in the outdoor temperature, there should be a proportional decrease in the electricity consumption.  There's a reason this is a valid assumption, again negelecting the otherwise stochastic behavior as a result of weather and occupancy/behavior.  The underlying heat transfer equation is:


<img src="http://latex.codecogs.com/png.latex?Q = hA \Delta T" alt="Q = hA \Delta T"/>


* where <img src="http://latex.codecogs.com/png.latex?\inline Q" alt="Q"/> is a heat flow rate
* <img src="http://latex.codecogs.com/png.latex?\inline h" alt="h"/> is a characteristic heat transfer coefficient
* <img src="http://latex.codecogs.com/png.latex?\inline A" alt="A"/> is the perpendicular area through which heat is passing
* and <img src="http://latex.codecogs.com/png.latex?\inline \Delta T" alt="\Delta T"/> is the temperature difference across the boundary through which heat is being transmitted, in this case outdoor and indoor temperature

If we were to assume that the behavior in the apartment was constant - the same lights were always on, the same devices were always charging, the refrigerator compressor was always running - if we assumed that the thermostat was always set at 70 degrees, and we assumed that the only part of the weather that ever changed was the temperature (humidity and wind were constant) the linear regression model we ran earlier would exactly mirror this equation.  The variation in the electricity consumption would be entirely explained by the change in outdoor temperature, and the slope of the line would be the overall heat transfer coefficient of the apartment (through walls, windows, doors, floors, ceilings, leakage, etc.) multiplied by the square area of the apartment boundary.  By installing higher R-value insulation in the walls or replacing our old drafty windows with triple-glazing, Argon-filled windows, we'd be altering the overall heat transfer coefficient <img src="http://latex.codecogs.com/png.latex?\inline h" alt="h"/> and effectively reducing the slope of the line we fit to the data.  We can also alter the line's slope by changing the thermostat setting; remember, the temperature difference <img src="http://latex.codecogs.com/png.latex?\inline \Delta T" alt="\Delta T"/> we're talking about is the difference between the outdoor and indoor temperatures.

As in all things, there is no true black (statistics) and white (engineering) - there are only grays.  In this regard smart meters can  obviously help us learn about buildings in addition to occupancy/behavior.  With clever algorithms (not the simple linear model I've used above) we can start to disaggregate energy consumption into its constituent parts - building response to weather and occupancy behavior.  Indeed, we've begun to do this.  For example, BGE recommends different energy efficiency actions I can take based on my consumption patterns.  But this is just a first step in how these data can be used, even just at individual residence level.  I'm imagining exploring in future analyses how to use these data to size battery storage and solar photovoltaics.

