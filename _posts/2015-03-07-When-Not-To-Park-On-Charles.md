---
layout: post
title: When Not To Park On N. Charles St.
description: "Hourly ticket counts for 5 blocks on N. Charles St. in Baltimore"
modified: 2015-03-07
category: articles
share: true
tags: [Baltimore, cities, transportation, open-data]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

In a recent post I've shown particular blocks that became targets for parking enforcement.  The short five block stretch on North Charles Street right around the corner from my apartment is one of those target locations.


<figure>
<iframe src="https://www.google.com/maps/d/embed?mid=z14mtc2vy9S0.k5pYuRXb6j84" width="550" height="480"></iframe><!--more-->
<figcaption>Five blocks on North Charles Street that have increasingly become target parking enforcement locations.  Blocks are colored and labeled by difference between September 2013 and March 2014 citation totals.</figcaption>
</figure>

So when is that stretch being targeted?  Here are the hourly total citation counts for those five blocks on North Charles St.  Looks like you're safe before 10am on the weekends, and maybe have a shot if you need a quick spot around 3pm.


{% maincolumn 'images/2015-03/N_Charles_by_Hour.png' 'Hourly total tickets since January 2013 for five blocks of North Charles Street in the Mt. Vernon neighborhood of Baltimore.' %}


<!-- <center>
<figure>
  <a href='{{ site.url }}/images/2015-03/N_Charles_by_Hour.png'><img src='{{ site.url }}/images/2015-03/N_Charles_by_Hour.png'></a>
  <figcaption>Hourly total tickets since January 2013 for five blocks of North Charles Street in the Mt. Vernon neighborhood of Baltimore.</figcaption>
</figure>
</center> -->

You're also probably safer on Sundays.

{% maincolumn 'images/2015-03/N_Charles_by_Day.png' 'Daily total tickets since January 2013 for five blocks of North Charles Street in the Mt. Vernon neighborhood of Baltimore.' %}

<!-- <center>
<figure>
  <a href='{{ site.url }}/'><img src='{{ site.url }}/images/2015-03/N_Charles_by_Day.png'></a>
  <figcaption>Daily total tickets since January 2013 for five blocks of North Charles Street in the Mt. Vernon neighborhood of Baltimore.</figcaption>
</figure>
</center> -->

### DOT & Baltimore IT Should Provide New Citation Description Options

Of course as we've seen in the past, parking police are using the "All Other Parking Meter Violations" predominantly, which masks the true cause of the citation.  In this instance, these are metered parking spots so my guess is their time has expired.  This is something that DOT and Baltimore Mayor's Office of IT could easily provide a new description code for so we know that this is the cause.  

{% maincolumn 'images/2015-03/N_Charles_Descriptions.png' 'Total tickets issued on five blocks of N. Charles St. in Baltimore by description.' %}

<!-- <center>
<figure>
  <a href='{{ site.url }}/images/2015-03/N_Charles_Descriptions.png'><img src='{{ site.url }}/images/2015-03/N_Charles_Descriptions.png'></a>
  <figcaption>Total tickets issued on five blocks of N. Charles St. in Baltimore by description.</figcaption>
</figure>
</center>
 -->
<br>

---

<p style="width: 100%; font-style: italic;">

Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore.</a><br>

Analysis conducted using <a href='http://www.python.org'>Python</a> and <a href='http://pandas.pydata.org'>Pandas</a>

Full analysis IPython notebook can be found <a href='http://nbviewer.ipython.org/github/jtelszasz/baltimore_citations/blob/master/citation_analysis.ipynb'>here</a>.<br>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58835878-1', 'auto');
  ga('send', 'pageview');

</script>
