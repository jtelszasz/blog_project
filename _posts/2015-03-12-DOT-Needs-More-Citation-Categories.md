---
layout: post
title: DOT Needs More Citation Categories
description: "Baltimore parking citation data shows more coding options needed."
modified: 2015-03-12
category: articles
share: true
tags: [Baltimore, cities, parking, transportation, civic-hacking, data-journalism]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

Here's a suggestion directed at the Department of Transportation for improving their citation system.  

I've alluded to this in previous posts, but this should make it clear as day.  Looking at all citations since February of 2013, the category "All Other Parking Meter Violations" trumps all of the other citation types by a wide margin.  My guess is that, given its prominence, these are citations for time expiring on a parking meter.  But why code it as "all other?"  An "other" option should be a last resort, when all other codes don't apply.  If parking enforcers are having to use this code so extensively, it suggests that they need more nuanced options for coding parking infringements.  This is essentially information about parking in the city that's up for grabs and we're leaving it on the table.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-03/Ticket_Counts_by_Citation_Type.png'><img src='{{ site.url }}/images/2015-03/Ticket_Counts_by_Citation_Type.png'></a>
  <figcaption>Total citation counts in Baltimore by category.</figcaption>
</figure>
</center>

---
*Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore.</a>*

*Analysis conducted using <a href='http://www.python.org'>Python</a> and <a href='http://pandas.pydata.org'>Pandas</a>*

*Full analysis IPython notebook can be found <a href='http://nbviewer.ipython.org/github/jtelszasz/baltimore_citations/blob/master/citation_analysis.ipynb'>here</a>.*

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58835878-1', 'auto');
  ga('send', 'pageview');

</script>
