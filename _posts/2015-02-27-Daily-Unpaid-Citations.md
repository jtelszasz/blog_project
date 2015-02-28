---
layout: post
title: Biasing Citations Towards Those Who Pay
description: "Changes in the proportion of unpaid parking tickets over time."
modified: 2015-02-27
category: articles
share: true
tags: [Baltimore, cities, parking, transportation, police, civic-hacking]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

Unless this dataset is somehow <a href='{{ site.url }}/articles/Quick-Response-From-Baltimore-Chief-Data-Officer/'>still screwed up</a>, there was a stark shift in behavior that coincided with the explosion of parking citations issued in Baltimore.  

<center>
<figure>
  <a href='{{ site.url }}/images/2015-02/Daily_Citations_Unpaid.png'><img src='{{ site.url }}/images/2015-02/Daily_Citations_Unpaid.png'></a>
</figure>
</center>

The plot above shows the perentage of tickets (daily) that remain unpaid over time.  The trend in 2014 makes sense: practically 100% of the tickets issued yesterday would be unpaid.  One would expect that the further back in time one looks, less tickets would have an outstanding balance.  This is certainly the case looking back as far as January 2014, and I've added a dashed line to continue the expected trend further backwards in time.

But what actually happens looking back further than January 2014 is quite different.  According to these data, the proportion of unpaid tickets increases almost to almost 70% when looking back the full two years.  70% of tickets from 2 years ago unpaid, while 10% from a year ago unpaid?  This seems fishy.  I can imagine four possibilities as to why we see this in the data.

1. **Dataset is still screwed up.** Occam's razor.  Q.E.D.  I asked Baltimore Chief Data Officer to check it out and will follow up soon.
2. **Increase in penalties that incentivized prompt payment.**  <a href='http://archive.baltimorecity.gov/portals/0/charter%20and%20Codes/code/Art%2031%20-%20Transit&Traff.pdf'> Article 31 Subtitle 36 of the Baltimore City Code</a> establishes the fines for parking violations, and §36-22   in particular sets forth the penalties that accrue when deliquent.  Right now the penalties are set at the lesser of $16 per month delinquent or ten times the amount of the original fine.  It looks like the last time this section was modified was through Ordinance 10-302, but as far as I can tell this actually added the 10X cap on penalties so this can't be it. 
3. **Parking ticket amnesty.** <a href='http://archive.baltimorecity.gov/portals/0/charter%20and%20Codes/code/Art%2031%20-%20Transit&Traff.pdf'> Article 31 Subtitle 36 of the Baltimore City Code</a> (§36-22 specifically) allows for the periodic offering of amnesty from penalties resulting from unpaid tickets.  The amnesty periods last 2 days.  This authority was established in 2003 at which time the first amnesty was offered.  The provisions also establish a ten-year moratorium on amnesties from the time of the first one, so the next one that could have been offered was 2013.  A parking ticket amnesty would certainly reduce the proportion of citations with an outstanding balance and could help explain the trend we see in 2013.  But another amnesty has not yet been offered as of February 2015, so this can't explain the change in proportion of unpaid tickets we're seeing.  Moreover, the trend we see in 2013 is across the entire year rather than a dramatic drop over a 2-day period that would result from such an amnesty period.
4. **Change in sampling (behavior of those sampled).**  Having eliminated options 2 and 3 and assuming the data are clean and reliable, the last option I came up with is that the rapid increase of parking citations in certain locations drastically biased the sample.  It would appear that the strategy of targeting specific locations as I've shown in <a href=''>previous posts</a> has paid off, since the total fines issued has shot up while the proportion of tickets remaining unpaid has significantly dropped.  This is an indication of a much more effective parking policing policy (revenue generation) by the city, although it likely causes a lot of frustration for those living and parking in the targeted locations.

---
*Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore.</a>*

*Analysis conducted using <a href='http://www.python.org'>Python</a> and <a href='http://pandas.pydata.org'>Pandas</a>*

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58835878-1', 'auto');
  ga('send', 'pageview');

</script>
