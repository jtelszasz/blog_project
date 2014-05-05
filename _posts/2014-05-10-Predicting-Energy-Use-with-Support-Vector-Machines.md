---
layout: post
title: Starting In On Some Machine Learning
description: "Using a machine learning algorithm for predicting next-hour electricity consumption."
modified: 2014-05-10
category: articles
tags: [machine-learning, smart-meters, predictive-analytics, electricity, demand-side, support-vector-machine]
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

As part of my research in grad school I had started getting interested in the use of machine learning tools for predicting energy consumption.  I went so far as to enroll in a machine learning class, but lacking the some of the statistical/mathematical knowledge for what they were teaching I ended up dropping about three-quarters of the way through.  I've since gone back on my own time and learned more statisical inference through online coursework, and am taking a stab at some analysis and coding.

## I Thought We Had a Model

In <a href="{{ site.url }}/articles/Energy-Use-and-Weather/">another post</a> I plotted electricity consumption against outdoor temperature and fit a straight line to the data.  

<figure>
  <a href="{{ site.url }}/images/Elec_and_Temp_OLS.png"><img src="{{ site.url }}/images/Elec_and_Temp_OLS.png"></a>
  <figcaption>Linear ordinary least squares regression model for electricity consumption using outdoor temperature.</figcaption>
</figure>

Let's be honest: in terms of predictive capacity, this model sucks.  What if I needed to predict what the electricity consumption would be in the next hour?  The prediction would be on the line - I measure what the outdoor temperature is and read off the corresponding consumption from the blue line.  But look at how far the actual usage is scattered.  Unless I got very lucky, I'd be way off.  (In fact, using Bayesian regression I could quantify that probability, but that's for another post.)

Clearly the underlying linear physics, the heat transfer equation below, doesn't tell the whole story.  It doesn't capture other aspects of the weather (wind and sun) and human behavior that all influence the amount of electricity consumed.  

<img src="http://latex.codecogs.com/png.latex?Q = hA \Delta T" alt="Q = hA \Delta T"/>

## Enter Machine Learning

Certainly there are other simpler modeling approaches I can take, and I'd like to learn more about those as well.  But because Python and Scikit-learn have made it so easy and intuitive, I jumped straight into the deep end with support vector machines.  Support vector machines find an *optimal* decision surface or regression model for the training data provided while trying to minimize the complexity of the model (to prevent overfitting).



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

