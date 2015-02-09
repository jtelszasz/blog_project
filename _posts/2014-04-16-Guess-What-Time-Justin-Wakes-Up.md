---
layout: post
title: Guess What Time Justin Wakes Up
description: "Exploring smart meter data from BGE."
modified: 2014-04-16
category: articles
tags: [BGE, smart-meters, energy, data, electricity]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

First, a little bit on my tools.

For analysis tools, I'm mainly using Python (in the form of iPython notebooks) with the <a href='http://pandas.pydata.org/'>Pandas</a> module for data analysis (the sklearn module for machine learning later). Suffice it to say it's rad.  I also use <a href='https://github.com/jtelszasz'>Github</a>, both for my analysis and modeling as well as this blog itself (as you can tell from the current web address), so you're welcome to peruse or use any of my code from there.  I'll try to keep my iPython notebooks pretty clean and explained well as a supplement to the blog.  You can find the notebook for the analysis below <a href='http://nbviewer.ipython.org/github/jtelszasz/my_energy/blob/master/My_Energy.ipynb?create=1'>here</a>.  (Just click the link - you don't need anything special to be able to view the notebook.)

Pandas has been great for data analysis and makes things intuitive and quick.  As a mechanical engineer, a lot of my previous work was in Matlab.  It of course has its strengths but for data analysis it always took quite a bit of manual data munging, especially when it came to time series. 

Anyways, using the Python groupby function I can manipulate the time series of my hourly electricity consumption from my BGE smart data.  The data starts from January 18 and I now have a few full months of data.  Below is a quick code snipet of how I'm using groupby in this case.

{% highlight Python %}

# elec_and_weather: hourly electricity usage
elec_and_weather.groupby([(elec_and_weather.index.dayofweek==5)|(elec_and_weather.index.dayofweek==6),elec_and_weather.index.hour])

{% endhighlight %}

### The correct answer is...

To arrive at the plot below, I actually first sliced the data by month and then applied the groupby shown above.

<center>
<figure>
  <a href="{{ site.url }}/images/2014-04/AvgDays_Elec_Feb_March.png"><img src="{{ site.url }}/images/2014-04/AvgDays_Elec_Feb_March.png"></a>
  <figcaption>Average weekday and weekend electricity consumption for February and March of 2014.</figcaption>
</figure>
</center>

This is the "guess what time Justin wakes up for work" plot. The coffee pot consumes 900 W, and we typically have it on for about 20 minutes or so, which would amount to a spike of .3 kWh for that hour. The roommate's hair dryer consumes 1,875 W and she uses it for about 5 minutes (so she claims, I think I want to see data for that), so that would make for about a .15 kWh spike. Of course that's what I think a typical day looks like. Not every weekday looked like that (if I worked from home, I probably used the french press instead of the coffee maker, and sometimes the roommate showers the night before and so doesn't blow dry the hair in the morn). Therefore, the 6am peak in the weekday averages is not quite that high. 

Since this spike should be strictly due to behavior, we don't need to look at the difference between February and March.  We can look at the 5am-6am difference over all the weekday samples thusly:

<center>
<figure>
  <a href="{{ site.url }}/images/2014-04/Wkday_5am6amDiff - Feb_March.png"><img src="{{ site.url }}/images/2014-04/Wkday_5am6amDiff - Feb_March.png"></a>
  <figcaption>5am to 6am difference across all weekday samples.</figcaption>
</figure>
</center>

The average weekday difference over this time period between 5am and 6am is .253 kWh.  The 20 minute coffee maker run and the 5 minute blow dryer would amount to .45 kWh.  Looks like that was the case at least a couple of times.

This is a good illustration of privacy concerns around ubiquitous data capture.  Measuring energy consumption is a proxy for measuring human behavior, and while I don't share a lot of the privacy concerns that many out there do, I can understand why this is problematic.  Suffice it to say, I don't care that a reader of this blog (are there any?) knows when I wake up (among other things).  Moreover, at larger scales than individual households - say at city block levels - these concerns should start to fade away, as aggregated data can effectively anonymize the information.  




