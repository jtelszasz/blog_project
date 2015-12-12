---
layout: post
title: Forecasting with Machine Learning
description: "Using a machine learning algorithm for predicting next-hour electricity consumption."
modified: 2014-05-08
category: articles
share: true
tags: [machine-learning, predictive-analytics, electricity, energy]
---

Taking a big jump into machine learning now.

As part of my research in grad school I had started getting interested in the use of machine learning tools for predicting energy consumption.  I went so far as to enroll in a machine learning class, but lacking the some of the statistical/mathematical knowledge for what they were teaching I ended up dropping about three-quarters of the way through.  I've since gone back on my own time and learned more statisical inference through online coursework, and am taking a stab at some analysis and coding. <!--more-->

### I Thought We Had a Model

In <a href="{{ site.url }}/articles/Energy-Use-and-Weather/">another post</a> I plotted electricity consumption against outdoor temperature and fit a straight line to the data.  

{% maincolumn 'images/2014-04/Elec_and_Temp_OLS.png' 'Linear ordinary least squares regression model for electricity consumption using outdoor temperature.' %}

Let's be honest: in terms of predictive capacity, this model sucks.  What if I needed to predict what the electricity consumption would be in the next hour?  The prediction would be on the line - I measure what the outdoor temperature is and read off the corresponding consumption from the blue line.  But look at how far the actual usage is scattered.  Unless I got very lucky, I'd be way off.  (In fact, I think using Bayesian regression I could quantify that probability, but that's for another post.)

Clearly the linear assumption doesn't tell the whole story.  It doesn't capture other aspects of the weather (wind and sun) and especially human behavior that all influence the amount of electricity consumed.  

### Enter Machine Learning

Certainly there are other simpler modeling approaches I can take, and I'd like to learn more about those as well.  But because Python and Scikit-learn have made it so easy and intuitive, I jumped straight into the deep end with support vector machines.  Support vector machines find an *optimal* regression or classification model, minimizing both the error on the training data while minimizing the complexity of the model itself so that it will be generalized for new data (prediction).

Support vector machines can be used for classification or regression.  As with other machine learning algorithms, the model is first "trained" using a (hopefully large) dataset.  The model parameters are optimized until a balance is struck between errors and model simplicity, a balance that is user adjusted.

I should also say very clearly that I'm not breaking any new ground here, in fact <a href='http://web.eecs.utk.edu/~leparker/publications/Energy-Buildings-2012.pdf'>this paper</a> compares several algorithms on similar household energy demand data sets to what I'm using (sensor-based time series) and using similar inputs (weather variables, hour of day, workday/holiday indicator).

### Modeling

Based on some of the <a href='{{ site.url }}/articles/Autocorrelation'>previous explorations of the data</a>, it looked like one hour's electricity usage could be a very good predictor of the next hour's usage.  In fact, it looked like it was a much better indicator than the <a href='{{ site.url }}/articles/Energy-Use-and-Weather'>outdoor temperature</a>.  I wonder how far that alone will get us.

Well, not completely alone.  There are two other easy time-related variables I'd like to include.  One is the hour of the day (1 through 24, though these each need a feature unto themselves to make each hour equal to a categorical 0 or 1) and a field for whether or not the day was a typical work day or not ("not" would include holidays, weekends, and days I worked from home).  I would expect there to be a pattern of electricity usage associated with both of these variables and we can include them at virtually no modeling expense.

As a training set, I'm using the hourly data between January 18 and March 24.  The testing set will consist of March 25 through March 31.

### Support Vector Regression with Scikit-learn

The Scikit-learn package for Python makes using machine learning algorithms simple and clean.  There is even a preprocessing module that does the scaling/normalization that should be done before building a model.

``` python
from sklearn import preprocessing as pre
scaler = pre.StandardScaler().fit(X_train)
X_train_scaled = scaler.transform(X_train)
X_test_scaled = scaler.transform(X_test)
```

Then to actually train the support vector regression model, I simply call the *fit* function of the SVR class using the training data-target pairs.

``` python
SVR_model = svm.SVR(kernel='rbf',C=100,gamma=.001).fit(X_train_scaled,y_train)
```

The kernel *rbf* is a radial basis function.  This kernel transforms the data into a higher dimensional space when performing the regression.  This generally results in more robust modelling of nonlinearities.  The *C* and *gamma* parameters are the user-adjustments I alluded to earlier that allow the model to strike a balance between tightly fitting the training data while keeping the simplest model possible.  For this first test case, I just manually adjusted them by order of magnitude until the {% m %}R^2"{% em %} I was getting over the test set was as high as possible.  A better approach would be to do a proper cross-validation that finds the best parameters for the these data.

Now to generate the prediction over the test data, I just call the *predict* function on the *SVM_model* object that I created (the trained model).

``` python
predict_y_array = SVR_model.predict(X_test_scaled)
```

Since I know what the actual hourly usage was over the testing period, I can calculate an {% m %}R^2"{% em %} for this testing set, which results in 0.732.

``` python
SVR_model.score(X_test_scaled,y_test)
```

{% maincolumn 'images/2014-05/SVM_predict_TS.png' 'Predicted (SVR, next-hour) and actual hourly electricity usage.' %}

It's important to remember that this entire timespan wasn't calculated in one go - each hour's actual usage would have been used to help predict the next hour's.  We're always forecasting the next hour consumption in this scenario. {% marginfigure 'errors' 'images/2014-05/SVM_plot_errors.png' 'Distribution of errors shows little or no bias (points generally balanced about the diagonal.' %}

One way to visualize the accuracy of the predictions is to plot them against the actual values as shown at right.  If the predictions were 100% accurate, all the points would lie on the 45 degree line shown in black.  It's a good sign that the points are distributed rather evenly above and below the line; it suggests that there is little bias (systematic under- or over-estimating).  In another post I'll dig in a little more on evaluating the model.


