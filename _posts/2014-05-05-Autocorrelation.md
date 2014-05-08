---
layout: post
title: Electricity Usage Autocorrelation
description: "Examining how hourly electricity demand is predicted by previous demand."
modified: 2014-05-05
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

If the goal is to predict the next hour's electricity consumption, a good predictor might be the consumption of the hour (or several hours) immediately prior.  One way to assess whether or not this is through the autocorrelation given by:

<img src="http://latex.codecogs.com/png.latex?R_{h}=\frac{c_{h}}{c_{0}}=\frac{\sum_{t=1}^{N-h}(Y_{t}-\bar{Y})(Y_{t+h}-\bar{Y})}{\sum_{t=1}^{N}(Y_{t}-\bar{Y})^2}  " alt="R_{h}=\frac{c_{h}}{c_{0}}=\frac{\sum_{t=1}^{N-h}(Y_{t}-\bar{Y})(Y_{t+h}-\bar{Y})}{\sum_{t=1}^{N}(Y_{t}-\bar{Y})^2}"/>

This measures the covariance between every point and a particular lag (or number of hours before) with respect to the overall variance.  This is calculated for every possible lag (for 1 hour all the way up to the length of the dataset) and plotted.  If the data were completely random, this would be zero at all time lags.  Again, I'm using the BGE smart meter data for my apartment for January 18 through March 31 of 2014.

<figure>
  <a href="{{ site.url }}/images/Elec_Autocorrelation.png"><img src="{{ site.url }}/images/Elec_Autocorrelation.png"></a>
  <figcaption>Electricity consumption autocorrelation.</figcaption>
</figure>

Confidence intervals of 95% and 99% are also plotted (solid and dashed horizontal lines, respectively) and so points outside these intervals are statistically significant; that is, the null hypothesis that there is no correlation between the data and its a particular lag is rejected.  For the apartment's electricity data there is statistically significant from 1 hour lag to approximately 500 hours of lag - the previous 20 days of electricity use are correlated with a typical hour's elecricity use.

There also appears to be a significant inverse relationship with lag times longer than 600 hours (25 days).  My guess is that this is due to the warming weather between February and March.  This relationship indicates that the electricity consumption for a given hour is typically less than in February - something common sense tells us, but this says that relationship is statistically significant.

If we want to use history as a means for predicting the next hour of consumption, including the entire history would become unwieldy.  To train  model we'd be using an N x N array for training where N is the number of hours for which we've been recording data.  For predicting the next hour, we would need a 1 X N vector of all of the N previous hours.  Instead, it would be more computationally efficient if we could reduce the training data set to N x A where A is a small number of strongly correlated indicator hours, say the past 6 hours or so.  To get at this, I've plotted a few example lags against the hour's electricity consumption.  There's nothing to say that these relationships *must* be linear, but by plotting the scatter plot and checking the R^2 of the linear fit, it's clear that for the most part the relationship (at least with immediate history) is linear.

<figure class='half'>
  <a href="{{ site.url }}/images/Elec_Lag_1hour.png"><img src="{{ site.url }}/images/Elec_Lag_1hour.png"></a>
  <a href="{{ site.url }}/images/Elec_Lag_6hour.png"><img src="{{ site.url }}/images/Elec_Lag_6hour.png"></a>
  <figcaption>Lag plot and linear regression, 1 hour and 6 hour lag.</figcaption>
</figure>

<figure class='half'>
  <a href="{{ site.url }}/images/Elec_Lag_12hour.png"><img src="{{ site.url }}/images/Elec_Lag_12hour.png"></a>
  <a href="{{ site.url }}/images/Elec_Lag_24hour.png"><img src="{{ site.url }}/images/Elec_Lag_24hour.png"></a>
  <figcaption>Lag plot and linear regression, 12 hour and 24 hour lag.</figcaption>

As expected, as the size of the lag increases, the R^2 decreases, meaning the consumption 1 hour before is more relevant than the consumption 24 hours (or more) immediately prior.  If we want to build a predictive model, including the 1 hour lag would be wise.







