---
layout: post
title: Baltimore Vacant Housing on The Atlantic's Citylab
description: The Atlantic's Citylab blog posted a map of vacant housing density that seems somewhat obscure.
modified: 2015-06-01
category: articles
share: true
tags: [Baltimore, ciites, vacant, blight]
---

<a href='http://www.citylab.com/housing/2015/05/mapping-the-density-of-baltimores-vacant-housing-crisis/394196/'>Citylab from The Atlantic</a> just bounced <a href='https://citiesblogger.wordpress.com/2015/05/27/the-urban-blight-that-is-baltimores-inner-city/'>some work done</a> by an economist named Amine Ouazad that maps the density of vacant housing in Baltimore.  The data Ouazad used are from the American Community Survey from the U.S. Census Bureau and <a href='http://www.ouazad.com/Maps/Baltimore_Vacancies/index.html'>this is the resulting map</a>.  Coincidently I had already been working with <a href='http://data.baltimorecity.gov'>Open Baltimore's</a>vacant building and lot data for a different analysis but I figured I could quickly respond to Ouazad's map.

Perhaps it's an artifact of the data used and the census tract samples, but a similar plot using data from <a href='http://data.baltimorecity.gov'>Open Baltimore</a> shows more clearly the divides within the city.  One commenter named "Jack" on the Citylab post indicated that the map showed high concentrations basically throughout the city, including wealthier and more business-centric neighborhoods like Mt. Vernon/Belvedere, Inner Harbor, Canton, and Federal Hill - comprising what we in Baltimore like to call <a href='http://thebaltimorechop.com/tag/the-white-l/'>"The White L."</a>  On first glance at the Ouazad map my intuition agreed with Jack, and here's what the Open Baltimore data actually look like.  There are two layers - a heat map and the actual vacant building footprints (in black) so when you zoom in you can see the actual vacant buildings.

<iframe width='100%' height='520' frameborder='0' src='https://jtelszasz.cartodb.com/viz/26254996-084f-11e5-b31b-0e018d66dc29/embed_map' allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen></iframe>


---
*Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore</a>.*

*Plots obtained using <a href='http://www.python.org'>Python</a>, <a href='http://pandas.pydata.org'>Pandas</a>, <a href='http://www.qgis.com'>QGIS</a>, and <a href='http://www.cartodb.com'>Carto.db</a>.*

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58835878-1', 'auto');
  ga('send', 'pageview');

</script>