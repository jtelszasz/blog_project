---
layout: post
title: Know More, B'more.
description: "Plotting some relatively clean data from Open Baltimore and Baltimore Neighborhood Indicators Alliance."
modified: 2015-03-30
category: articles
share: true
tags: [Baltimore, cities, poverty, know-more-bmore, civic-hacking, data-journalism]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

I took a quick look at the Vital Signs dataset from the<a href='http://www.bniajfi.org/indicators'> Baltimore Neighborhoods Indicators Alliance - Jacob France Institute (BNIA)</a> at the University of Baltimore (data also available at <a href='http://data.baltimorecity.gov/'>Open Baltimore</a>) and created some <a href='http://www.gapminder.org/'>Hans Rosling-style plots</a>.

These are clean datasets of socio-economic indicators derived from the U.S. Census Bureau, American Community Survey and Baltimore agencies, among other sources.  The BNIA has built a <a href='http://bniajfi.org/vital_signs/'>website for mapping data</a> and they were rightly lauded for cleaning and opening up this data for public use, but not I'm seeing only a handful of correlations and analysis based on the Vital Signs datasets.

<center>
<div>
    <a href="https://plot.ly/~jtelszasz/211/" target="_blank" title="Baltimore: Too Many Kids in Poverty" style="display: block; text-align: center;"><img src="https://plot.ly/~jtelszasz/211.png" alt="Baltimore: Too Many Kids in Poverty" style="max-width: 100%;width: 500px;"  width="500" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="jtelszasz:211" src="https://plot.ly/embed.js" async></script>
</div>
</center>

In this first plot, the bubbles are sized according to the total number of children between the ages of 5 and 18 (school age) living in each neighborhood.

Definitely check out BNIA's website, and <a href='http://www.urban.org/UploadedPDF/413219-NNIP-an-Open-Data-in-Baltimore.pdf'>this</a> is a good synopsis of open data in Baltimore.

---
*Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore</a> and the<a href='http://www.bniajfi.org/indicators'> Baltimore Neighborhoods Indicators Alliance - Jacob France Institute.</a>*

*Analysis conducted using <a href='http://www.python.org'>Python</a>, <a href='http://pandas.pydata.org'>Pandas</a>, and <a href='http://www.plot.ly'>Plot.ly</a>.*

*Full analysis IPython notebook can be found <a href='http://nbviewer.ipython.org/github/jtelszasz/baltimore_vital_signs/blob/master/vital_signs_viz.ipynb'>here</a>.*

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58835878-1', 'auto');
  ga('send', 'pageview');

</script>
