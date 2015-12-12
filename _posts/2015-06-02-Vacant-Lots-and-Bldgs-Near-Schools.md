---
layout: post
title: B'More Schools Surrounded by Blight and Danger
description: "Small scale urban systems comprised of schools and vacant lots, buildings."
modified: 2015-06-02
category: articles
share: true
tags: [Baltimore, cities, buildings, schools]
---

Many small and midsize American cities have experienced decades of <a href='http://en.wikipedia.org/wiki/Shrinking_cities_in_the_United_States'>population shrinkage</a>, but as you can imagine, it's not so easy to shrink the physical footprint of a city.   Compound this with the housing bubble burst a few years ago and significant wealth inequality and it's no surprise that so many cities are wrestling with blight and abandonment.  Even though <a href='http://articles.baltimoresun.com/2011-12-06/news/bs-md-ci-srb-looks-ahead-20111202_1_mayor-stephanie-rawlings-blake-property-tax-rate-half-century-of-population-decline'>SRB wants to bring in 10,000 new families</a>, there's little chance the vacant property issue in Baltimore is going away anytime soon.  

In addition to the safety hazard neglected structures can pose, vacant lots and buildings are magnets for <a href='http://articles.chicagotribune.com/1992-02-10/news/9201130233_1_vacant-buildings-abandoned-demolishes'>serious</a> <a href='http://articles.baltimoresun.com/2014-08-07/news/bs-crime-vacants-20140806_1_property-crime-serious-crime-violent-crime'>crime</a>, including *gang activity, drugs, murder, assault, and rape*.

In order to get a look at how blight is affecting Baltimore one pretty straightforward exercise is to map all of these abandoned buildings and parcels to see what the city looks like.  I did this in the <a href='{{ site.url }}/articles/Baltimore-Vacant-Houses-On-Citylab/'>last post</a>, and this work has been <a href='http://technical.ly/baltimore/2012/08/09/15928-vacant-buildings-baltimore-city-map/'>done before</a>.  It should come as no surprise to anyone living in Baltimore where the neighborhoods hardest hit with blight are.  

But context is everything, and the story these data tells us about what it's like to be a school-aged kid in Baltimore is harrowing. **The analysis suggests that about 68% of all vacant buildings in Baltimore are within a quarter mile of a city school, while about 27% of all vacant parcel area is within the same distance.**  

Below you'll see just how rampant this issue is for children in Baltimore.  The map shows a quarter-mile radius around each city school and the vacant parcels (blue) and vacant buildings (orange) within those buffers (data from <a href='http://data.baltimorecity.gov'>Open Baltimore</a>).  

<p style="width:90%;">  
<iframe width='100%' height='520' frameborder='0' src='https://jtelszasz.cartodb.com/viz/8d52d710-4ffc-11e5-b7d9-0e018d66dc29/embed_map' allowfullscreen webkitallowfullscreen mozallowfullscreen oallowfullscreen msallowfullscreen></iframe>
</p>

<!--more--> 

The school with the most vacant buildings within a quarter mile is an **elementary** school - Roots and Branches School - with a whopping **722 vacant buildings surrounding it**. Unfortunately it shouldn't come as a surprise that it's in West Baltimore, just a few blocks south of where Freddie Gray lived.

Here are the same data without the geospatial information and plotted for comparison and trends.

<!-- {% maincolumn 'https://plot.ly/~jtelszasz/261/' '' %}   -->
<br>

<iframe width="50%" height="500" frameborder="0" scrolling="no" src="https://plot.ly/~jtelszasz/261.embed"></iframe>
<!-- <div>
    <a href="https://plot.ly/~jtelszasz/261/" target="_blank" title="Baltimore City Schools Surrounded by Blight" style="display: block; text-align: left;"><img src="https://plot.ly/~jtelszasz/261.png" alt="Baltimore City Schools Surrounded by Blight" width="50%" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="jtelszasz:261" src="https://plot.ly/embed.js" async></script>
</div> -->
---

## An opportunity?

The obvious concern is the exposure of children to serious hazards in and around these lots and buildings, and based on the numbers this is nothing short of **an emergency** of the highest order.

But I'd like to suggest that with a little bit of ingenuity this presents an opportunity as well.  What if the city just handed over some of these lots and buildings to schools?  What could they do with them?  Of course abandoned structures would need to undergo inspection and clean up first.  Some schools obviously might be closer to more ideal structures while others might be closer to more open parcels of land that they could take over.  Obviously this would hardly put a dent in the approximately 17,000 vacant buildings in Baltimore, but at least we'd be doing something with a few.

I think this could become an interesting study in urban planning, with multiple layers from the city-system scale down to the architectural-site scale.  I'm envisioning a network of nodes made up of school-affiliated parcels and structures that provide a rich learning network.  Students could visit each other's sites and learn and exchange ideas.

Just a few ideas I've had are:

1. Greenhouses, gardens, or urban ecology/farming.
2. Renewable energy generation.  (Maybe a next step in analysis is solar or wind potential modeling?)
3. High school shop class/Habitat for Humanity collaboration for rebuilding and construction.
4. Urban art classes: graffiti, sculpture, etc. (My personal favorite.)
5. Parks, playgrounds, basketball courts, etc.
6. Invite the students to devise their own plans should they be given a plot of land or building.


<br>


---

<p style="width: 100%; font-style: italic;">

Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore</a> and the<a href='http://www.bniajfi.org/indicators'> Baltimore Neighborhoods Indicators Alliance - Jacob France Institute.</a><br>

Analysis conducted using <a href='http://www.python.org'>Python</a>, <a href='http://pandas.pydata.org'>Pandas</a>, <a href='http://www.plot.ly'>Plot.ly</a>, <a href='http://www.qgis.com'>QGIS</a>, and <a href='http://www.cartodb.com'>CartoDB</a>.<br>

Analysis files including any iPython notebooks can be found on <a href='https://github.com/jtelszasz/baltimore-schools-blight'>Github</a>.<br>

</p>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58835878-1', 'auto');
  ga('send', 'pageview');

</script>