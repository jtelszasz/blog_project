---
layout: post
title: Closer Look at the Electricity SVR Forecast
description: "Inspecting the model's accuracy."
modified: 2014-12-17
category: articles
share: true
tags: [machine-learning, predictive-analytics, electricity, energy]
---

First a disclaimer on cross-validation:

In the <a href='{{ site.url }}/articles/Predicting-Energy-Use-with-Support-Vector-Machines'>previous post</a> I trained a support vector machine model using electricity demand data.  I should state that this is not the end of the analysis nor a robust model ready for release into the wild.  The model would need to undergo cross-validation to forge it into something more robust and generalized. <!--more-->

The data I'm using are the hourly electricity consumption in my apartment between January 18 and March 31, 2014, measured by a smart meter and provided by BGE. The following plot is a closer look at the predicted demand and actual demand over two days from the testing period.

{% maincolumn 'images/2014-06/SVM_predict_TS_zoom.png' 'Predicted (SVR, next-hour) and actual hourly electricity usage, March 25 and 26.' %}

It looks like, with some exceptions, the prediction is generally one hour behind what the actual electricity demand is doing, especially looking at most of the peaks.  At first I thought (hoped) that this was an issue with how I was date indexing the predicted values after calculating them (assigning a timestamp one hour behind what it should have been). But after closer inspection and thinking about it, this actually makes sense.  In the post on <a href='{{ site.url }}/articles/Autocorrelation'>autocorrelation</a> I showed the following lag plot:   

{% maincolumn 'images/2014-06/Elec_Lag_1hour.png' 'Lag plot, 1 hour.' %}  


The slope of the linear fit is about 0.97 and the constant (y-intercept) is about 0.04.  In other words, the ratio between any hour's electricity demand and the hour previous is about one.  So unless the time of day or workday-non-workday indicator is *very* influential at any hour (like <a href="{{ site.url }}/articles/Guess-What-Time-Justin-Wakes-Up">6am</a>), the model will likely just predict the next hour to be the same as the current hour demand.  This will result in missing peaks by an hour, which if you're a utility trying to schedule enough generation in the summer to meet the next hour's air conditioning loads in a city, this is not so bueno.  I think the reason this is a product of the model is that a large fraction of the training samples used to build the model are *not* peaks, save for the <a href='{{ site.url }}/articles/Guess-What-Time-Justin-Wakes-Up'>6am wake-up time</a>. 

Below are the same results, just resampled to daily instead of hourly.

{% maincolumn 'images/2014-06/SVM_predict_DailyTotal.png' 'Hourly demand (actual and predicted) resampled to daily totals.' %}


### Accuracy Measures

In order to compare the accuracy of any models, the following measures can be used.  The file <a href="http://www.github.com/jtelszasz/my_energy/forecasts/">"errors.py"</a> has all of these functions for future use.

I've calculated and reported the values below and while some do have some absolute meaning, we'll need to test out some more models to see the relative performance of the model.

#### Root Mean Sqaure Error

This is effectively the standard error of the model, and is in the same units as those of the predicted variable (or kilowatt-hours here).


{% m %}RMSE=\sqrt{\frac{\sum_{1}^{N}(y-\hat{y})^{2}}{N}} {% em %}


The standard error for the <a href='{{ site.url }}/articles/Predicting-Energy-Use-with-Support-Vector-Machines'>initial SVM model</a> is 0.17 kilowatt-hours.

#### Mean Absolute Percent Error

With this measure, the absolute percent error between each predicted value and actual value is calculated and the average is taken; the unit of measure is a percentage. If the absolute value wasn't taken and there was little bias in the model, you'd end up with something close to zero and the measure would be worthless.  (No I couldn't get the damn absolute value brackets working in the equation editor and I stopped caring.)

{% m %}MAPE=\frac{1}{N}\sum_{1}^{N}\frac{abs(y-\hat{y})}{y} {% em %}

The mean absolute percent error for the SVM model is 19%.

#### Coefficient of Variation

This is similar to the RMSE measure, except it is normalized to the mean.  It indicates how much variation there is with respect to the mean.


{% m %}CV=\sqrt{\frac{\frac{1}{N-1}\sum_{1}^{N}(y-\hat{y})^{2}}{\bar{y}}} {% em %}

The coefficient of variation for the SVM model is 0.21.

#### Mean Bias Error

The mean bias error gives an indication of how the model over- or underestimates.

{% m %}MBE=\frac{\frac{1}{N-1}\sum_{1}^{N}(y-\hat{y})}{\bar{y}} {% em %}

The mean bias error for the initial SVM model is -0.02, which indicates the model isn't systematically over- or underestimating the hourly kilowatt-hour consumption.