---
layout: post
title: Electricity Usage Autocorrelation
description: "Examining how hourly electricity demand is predicted by previous demand."
modified: 2014-12-17
category: articles
tags: [energy, electricity]
---

Here's a quick look using historical data to predict the future.  If the goal is to predict the next hour's electricity consumption, a good predictor might be the consumption of the hour (or several hours) immediately prior.  One way to assess whether or not this is through the autocorrelation given by: <!--more-->


{% m %}R_{h}=\frac{c_{h}}{c_{0}}=\frac{\sum_{t=1}^{N-h}(Y_{t}-\bar{Y})(Y_{t+h}-\bar{Y})}{\sum_{t=1}^{N}(Y_{t}-\bar{Y})^2} {% em %}

This measures the covariance between every point and a particular lag (or number of hours before) with respect to the overall variance.  This is calculated for every possible lag (for 1 hour all the way up to the length of the dataset) and plotted.

{% maincolumn 'images/2014-05/Elec_Autocorrelation.png' 'Electricity consumption autocorrelation.' %}

{% marginfigure '1hour' 'images/2014-05/Elec_Lag_1hour.png' 'Lag plot and linear regression, **1 hour lag**. <a href="/images/2014-05/Elec_Lag_1hour.png">Click here to enlarge</a>.' %}

{% marginfigure '6hour' 'images/2014-05/Elec_Lag_6hour.png' 'Lag plot and linear regression, **6 hour lag**. <a href="/images/2014-05/Elec_Lag_6hour.png">Click here to enlarge</a>.' %}

{% marginfigure '12hour' 'images/2014-05/Elec_Lag_12hour.png' 'Lag plot and linear regression, **12 hour lag**. <a href="/images/2014-05/Elec_Lag_12hour.png">Click here to enlarge</a>.' %}

{% marginfigure '24hour' 'images/2014-05/Elec_Lag_24hour.png' 'Lag plot and linear regression, **24 hour lag**. <a href="/images/2014-05/Elec_Lag_24hour.png">Click here to enlarge</a>.' %}

If the data were completely random, this would be zero at all time lags.  Again, I'm using the BGE smart meter data for my apartment for January 18 through March 31 of 2014.

Confidence intervals of 95% and 99% are also plotted (solid and dashed horizontal lines, respectively) and so points outside these intervals are statistically significant; that is, the null hypothesis that there is no correlation between the data and its a particular lag is rejected.  For the apartment's electricity data there is statistically significant from 1 hour lag to approximately 500 hours of lag - the previous 20 days of electricity use are correlated with a typical hour's elecricity use.

There also appears to be a significant inverse relationship with lag times longer than 600 hours (25 days).  My guess is that this is due to the warming weather between February and March.  This relationship indicates that the electricity consumption for a given hour is typically less than in February - something common sense tells us, but this says that relationship is statistically significant.

If we want to use history as a means for predicting the next hour of consumption, including the entire history would become unwieldy.  To train  model we'd be using an {% m %}N x N{% em %} array for training where N is the number of hours for which we've been recording data.  For predicting the next hour, we would need a {% m %}1 X N {% em %}vector of all of the N previous hours.  Instead, it would be more computationally efficient if we could reduce the training data set to {% m %}N x A{% em %} where A is a small number of strongly correlated indicator hours, say the past 6 hours or so.  To get at this, I've plotted a few example lags against the hour's electricity consumption.  There's nothing to say that these relationships *must* be linear, but by plotting the scatter plot and checking the {% m %}R^2{% em %}of the linear fit, it's clear that for the most part the relationship (at least with immediate history) is linear.



As expected, as the size of the lag increases, the {% m %}R^2{% em %} decreases, meaning the consumption 1 hour before is more relevant than the consumption 24 hours (or more) immediately prior.  If we want to build a predictive model, including the 1 hour lag would be wise.







