---
layout: post
title: My Electricity Use
description: "First look at my electricity use from BGE smart meters."
modified: 2014-03-27
category: articles
tags: [BGE, smart-meters, energy, data, electricity]
image:
  feature: texture-feature-05.jpg
  credit: Texture Lovers
  creditlink: http://texturelovers.com
---

Previously, I laid out what BGE's smart meters are doing in Baltimore. Below is a quick snapshot of the downloaded data for my apartment electricity usage.

### Green Button

Green Button is the standard by which utilities are providing data to their customers. It was prompted in 2011 by the U.S. Chief Technology Officer calling on industry to standardize accessibility and data format for customer smart meter data and parallels the <a href="">Blue Button</a> concept for health data. Customers can download their interval usage data and use as they see fit. A customer could provide the data to a solar panel installer to better inform the design of the installation, or the data could be used to develop apps that show opportunities for efficiency upgrades.

### Data

I've downloaded my data from the first date available (Janurary 18, 2014) through the end of February 28, 2014. I'm able to access hourly electrical consumption in kilowatt-hours, and the file is a clean csv. Shown below are probability distributions over those 6 weeks or so. We have electric resistance heating (not central gas-fired heating) and so our consumption during the winter is quite high.

<center>
<figure>
  <a href="{{ site.url }}/images/2014-03/MyEnergy_ElecHist.png"><img src="{{ site.url }}/images/2014-03/MyEnergy_ElecHist.png"></a>
  <figcaption>Probability distribution for hourly electricity usage. Data collected January 18, 2014, through February 28, 2014.</figcaption>
</figure>
</center>

Below is the cumulative distribution. For a given kilowatt-hour usage on the horizontal axis, the cumulative function gives the probability that an hour's usage was that quanitity or less.

<center>
<figure>
  <a href="{{ site.url }}/images/2014-03/MyEnergy_ElecCDF.png"><img src="{{ site.url }}/images/2014-03/MyEnergy_ElecCDF.png"></a>
  <figcaption>Cumulative distribution for hourly electricity usage. Data collected January 18, 2014, through February 28, 2014.</figcaption>
</figure>
</center>

Both figures show that there is a higher number of hours spent consuming about 0.5 kilowatt-hours. It may take some weather data to tease out what might be going on there, and I plan to look at the influence of weather next.
