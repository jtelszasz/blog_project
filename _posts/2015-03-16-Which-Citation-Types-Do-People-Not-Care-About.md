---
layout: post
title: Which citations do people not care about paying?
description: "Quick look at which citations have open fines remaining."
modified: 2015-03-16
category: articles
share: true
tags: [Baltimore, cities, parking, transportation, civic-hacking, data-journalism]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

The Baltimore citation open data also includes a field for open balance, meaning the amount still owed to the city for each citation.

With this information we can look at the rates of unpaid citations by citation type.  Below I've calculated these ratios for all description types, but have only included for comparison those categories that had more than 100 citations in the database (so we hopefully have meaningful comparisons).

### News flash: abandoned vehicle citations are more likely to be unpaid.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-03/Percent_Citations_Open_Bal.png'><img src='{{ site.url }}/images/2015-03/Percent_Citations_Open_Bal.png'></a>
  <figcaption>Percent of total citations that have a balance as of February 28, 2015.</figcaption>
</figure>
</center>

<!--The red light violations, however, should be of particular concern since they pose a safety risk.  While many of us in Baltimore have independently come to the same conclusion that the red lights are poorly timed, this does not excuse ignoring them.  The fact that red light violations have a higher portion of unpaid citations seems to indicate that the perhaps a stiffer penalty increase is warranted in order to curb this behavior.-->

## Another suggestion for Baltimore DOT and Mayor's Office of IT

The dataset that gets posted on <a href='http://data.baltimorecity.gov'>the Open Baltimore data portal</a> could really use better documenatation.  Here's another example of why.  Since the speed camera program was halted in Baltimore, certain citations are no longer captured by this dataset, since parking enforcers don't issue any kind of moving violations.  Some of those types are still in this dataset, however - a hold over from when the camera program was still in effect.  They should be removed before any analysis or comparisons.  

<center>
<figure>
  <a href='{{ site.url }}/images/2015-03/Ticket_Counts_By_Year.png'><img src='{{ site.url }}/images/2015-03/Ticket_Counts_By_Year.png'></a>
  <figcaption>Total ticket counts by category and year.</figcaption>
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
