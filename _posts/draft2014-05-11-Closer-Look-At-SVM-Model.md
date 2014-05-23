---
layout: post
title: Closer Look at the Electricity SVR Forecast
description: "Inspecting the model's accuracy."
modified: 2014-05-11
category: articles
tags: [machine-learning, smart-meters, predictive-analytics, electricity, demand-side, support-vector-machine]
image:
  feature: texture-feature-03.jpg
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

In the <a href='{{ site.url }}/articles/Predicting-Energy-Use-with-Support-Vector-Machines'>previous post</a> I trained a support vector machine model using electricity demand data.  The data I'm using are `ly electricity consumption in my apartment between January 18 and March 31, 2014, measured by a smart meter and provided by BGE. The following plot is a closer look at the predicted demand and actual demand over two days from the testing period.

<figure>
  <a href="{{ site.url }}/images/SVM_predict_TS_zoom.png"><img src="{{ site.url }}/images/SVM_predict_TS_zoom.png"></a>
  <figcaption>Predicted (SVR, next-hour) and actual hourly electricity usage, March 25 and 26.</figcaption>
</figure>

It looks like, with some exceptions, the prediction is generally one hour behind what the actual electricity demand is doing, especially looking at most of the peaks.  At first I thought (hoped) that this was an issue with how I was date indexing the predicted values after calculating them (assigning a timestamp one hour behind what it should have been). But after closer inspection and thinking about it, this actually makes sense.  In the post on <a href='{{ site.url }}/articles/Autocorrelation'>autocorrelation</a> I showed the following lag plot: 

<figure>
  <a href="{{ site.url }}/images/Elec_Lag_1hour.png"><img src="{{ site.url }}/images/Elec_Lag_1hour.png"></a>
  <figcaption>Lag plot, 1 hour.</figcaption>
</figure>

The slope of the linear fit is about 0.97 and the constant (y-intercept) is about 0.04.  In other words, the ratio between any hour's electricity demand and the hour previous is about one.  So unless the time of day or workday-non-workday indicator is influential at any hour, the model will likely just predict the next hour to be the same as the current hour demand.  This will result in missing peaks by an hour, which if you're a utility trying to schedule enough generation in the summer to meet the next hour's air conditioning loads in a city, this is not so bueno.  I think the reason this is a product of the model is that a large fraction of the training samples used to build the model are *not* peaks, save for the <a href='{{ site.url }}/articles/Guess-What-Time-Justin-Wakes-Up'>6am wake-up time</a>. 

Below are the same results, just resampled to daily instead of hourly.

<figure>
  <a href="{{ site.url }}/images/SVM_predict_DailyTotal.png"><img src="{{ site.url }}/images/SVM_predict_DailyTotal.png"></a>
  <figcaption>Hourly demand (actual and predicted) resampled to daily totals.</figcaption>
</figure>

### Accuracy Measures

In order to compare the accuracy of any models, the following measures can be used.

#### Root Mean Sqaure Error

<img src="http://latex.codecogs.com/png.latex?\Delta T" alt="\Delta T"/>

#### MAPE

#### CV

#### Mean Bias Error


