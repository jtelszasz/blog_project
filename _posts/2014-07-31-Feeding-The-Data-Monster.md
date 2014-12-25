---
layout: post
title: Feeding the Data Monster
description: "Finding the right data to answer some energy use questions."
modified: 2014-12-17
category: articles
tags: [home-monitoring, smart-meters, data, electricity]
image:
  feature: texture-feature-04.jpg
  credit: Texture Lovers
  creditlink: http://texturelovers.com
---

Scouring the interwebz for some data.

There are a few research questions that I'd like to dig into but I haven't quite found the right data yet for them.  Ideally I would use our apartment data, but I need at least some summer data (early June won't count) and we actually just moved apartments.  There are some important differences between the previous and current apartment - namely central AC, larger but less leaky windows, a much larger floor plan, a dishwasher, and a dedicated apartment electric water heater.  

I've done some digging to come up with some other candidate datasets, though this is by no means comprehensive.  I'm mainly looking for at least a year worth of hourly electricity data (or finer scale that could be resampled) for a household or apartment with moderate or high summer air conditioning loads. A lot of the publicly available electricity usage datasets I've found have been geared toward non-invasive appliance load monitoring (NIALM) research - test data for algorithms that can breakout appliance end uses based on the electricity signatures.  Generally these are very high frequency (sub-minute time scales) but cover much shorter spans than needed (really a full year).  Hopefully this compilation is useful for other researchers out there.

I think I might also put some of these in an appropriate Github folder and turn this post into a readme for future use.  There are plenty more out there that are geared towards the NIALM stuff so if I get into that more, I can add it to the list there.

### Green Button Sample Datasets

Since BGE has signed on to use the Green Button data standard (like most utilities using smart meters have) I'm hoping to use a sample dataset, since it would easily be replaced by my own data once it's available.

The National Institute for Standards and Technology has a <a href='https://collaborate.nist.gov/twiki-sggrid/bin/view/SmartGrid/GreenButtonSDK'>list of available sample datasets on their website</a> for the software development kit, or SDK.  It isn't specified what type of building or location the samples are from, but they do provide hourly profiles that add up to a full year's worth of data.  This may be worth digging into.

The <a href='https://collaborate.nist.gov/twiki-sggrid/bin/view/SmartGrid/GreenButtonSDK'>same NIST website</a> links to some data from San Diego Gas and Electric (SDGE).  There are multiple hourly datasets listed, and they specify a region within SDGE's territory that the data have come from (coastal, inland, desert, etc.)

I also found <a href='http://www.sdge.com/documents/green-button-60-min-meter-interval-sample-data-csv'>this</a> sample on SDGE's own website.  It's one year worth of hourly interval electrcity usage data for a residence.  At least looking at this one dataset qualitatively, the A/C loads don't peak nearly as badly as I'd expect in Baltimore during the summer so I probably won't use this.

<center>
<figure>
  <a href="{{ site.url }}/images/2014-07/SDGE_Data.png"><img src="{{ site.url }}/images/2014-07/SDGE_data.png"></a>
  <figcaption>Sample SDGE Green Button electricity usage data.</figcaption>
</figure>
</center>

### Pecan Street Research Institute

The <a href='http://www.pecanstreet.org'>Pecan Street Research Institute</a> curates possibly the largest residential energy and water consumption dataset.  The effort was initiated in 2009 and monitors the electricity, gas, and water use of over 900 homes in Texas at 1-minute resolution.  The electricity monitoring includes both whole house and up to 23 submetered circuits.  Unfortunately you have to be an active academic researcher to even obtain a free sample of the dataset, let alone full access to the whole shebang.

### Jack Kelly, PhD student at Imperial College

Jack Kelly at Imperial College has been gracious enough to post his home monitoring datasets on <a href='https://www.github.com/jackkelly'>Github</a>.  He's been monitoring two homes for electricity usage and sub-minute timescales, neither of which include air-conditioning data.  The lack of air conditioning doesn't really help me.

### Kaggle Competition Sample Data

<a href='http://www.kaggle.com'>Kaggle</a> hosts a platform for open competitions that usually ask competitors to devise machine learning or statistical predicitions, the most accurate prediction winning.  Several of the competitions have involved energy - either forecasting demand or disaggregating demand data into end uses (Kaggle's actual business involves the application of machine learning for the energy industry).  The <a href='http://www.kaggle.com/c/belkin-energy-disaggregation-competition'>disaggregation competition, sponsored by Belkin</a>, asked competitors to try and make use of a particular technique in order to tease out how much energy was used for various appliances.  The data used for this is very high frequency resolution for four houses.

### UCI Center for Machine Learning and Intelligent Systems

University of California at Irvine has a center in the computer science department that has sourced a <a href='http://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption'>dataset from researchers in Clamart, France</a>.  It appears the minute-resolution, sub-metered data (more than 2 million rows) were recorded by Georges Hebrail et al. for a home in France, but I haven't been able to find traceback information to confirm.  Unfortunately, while one of the three submeters supposedly captures a water heater and an air conditioner, it's clear that household member behavior - particularly when it comes to air conditioning - is substantially different than ours.  (This is likely the result of higher energy prices driving reduced consumption, something Americans are only familiar with when gasoline prices jump.)  Since I know our electricity consumption will spike significantly higher this summer, I don't think this will be a useful dataset.


