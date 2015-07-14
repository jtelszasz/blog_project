---
layout: post
title: Arrests in Baltimore Drop in May
description: "After the Freddie Gray protests, officers arrest less."
modified: 2015-06-12
category: articles
share: true
tags: [Baltimore, crime, police, open-data]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

There's been quite a bit of discussion about whether or not protests regarding police brutality have made it less likely that police are willing to do the hard work necessary to enforce the law and fight crime.  

No matter which camp you're in, it's clear (at least as far as the published data are concerned) that <a href='http://http://www.nytimes.com/2015/06/13/us/after-freddie-gray-death-west-baltimores-police-presence-drops-and-murders-soar.html?smid=tw-share&_r=0'>arrests have taken a dive in Baltimore</a>.  Police Commissioner Batts can dodge or deflect all he wants, but as has been reported, arrests have dropped and the city data corroborate it.  Total arrests in the <a href='http://data.baltimorecity.gov'>Open Baltimore</a> data for April 2015 were 2,438 while in May there were 1,449, a drop of about 40%.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-06/baltimore_daily_arrest_count_around_FG.png'><img src='{{ site.url }}/images/2015-06/baltimore_daily_arrest_count_around_FG.png' width='120%'></a>
  <figcaption>Daily arrests in Baltimore for April and May 2015.  Click image to enlarge.</figcaption>
</figure>

</center>

<center>
<figure>
  <a href='{{ site.url }}/images/2015-06/baltimore_2015_weekly_arrest_count_thru_may.png'><img src='{{ site.url }}/images/2015-06/baltimore_2015_weekly_arrest_count_thru_may.png'></a>
  <figcaption>Weekly arrests in Baltimore for 2015.  Click image to enlarge.</figcaption>
</figure>
</center>

Having the granular arrest data for Baltimore we can also take a look at whether or not the decline in arrests was more pronounced in particular areas (like West Baltimore, as the NY Times article linked above describes).  At first glance a lot (around 45%) of arrest records are not geocoded with a lat-long pair and without knowing the reason for this exclusion it's a safer assumption that there is some bias in the data available.  Stay tuned.


---
*Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore</a>.*

*Analysis conducted using <a href='http://www.python.org'>Python</a>, <a href='http://pandas.pydata.org'>Pandas</a>, and <a href='http://www.plot.ly'>Plot.ly</a>.*

*Full analysis IPython notebook can be found <a href='https://github.com/jtelszasz/baltimore_crime/blob/master/post_freddiegray_crime.ipynb'>here</a>.*

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58835878-1', 'auto');
  ga('send', 'pageview');

</script>
