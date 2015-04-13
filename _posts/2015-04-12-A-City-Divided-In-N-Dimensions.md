---
layout: post
title: A City Divided (in N dimensions)
description: "Analyzing segregation in Baltimore."
modified: 2015-04-12
category: articles
share: true
tags: [Baltimore, cities, poverty, know-more-bmore, civic-hacking, data-journalism, PCA, k-means]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

It's no secret that most American cities are segregated.

When I tell people I live in Baltimore, that I love living there and that it's a great American city, what I really mean is that the neighborhoods I typically experience are great.  Baltimore of course has its many ills, and it's very easy for white, college-educated individuals like myself to find themselves experiencing a very different reality than most in the city.

There are many socio-economic variables that would describe such segregation - something I hinted at with the <a href='{{ site.url }}/articles/Know-More-Bmore'>last post</a>.  Luckily, the<a href='http://www.bniajfi.org/indicators'> Baltimore Neighborhoods Indicators Alliance - Jacob France Institute (BNIA)</a> at the University of Baltimore has made it their mission to provide a clean, concise set of indicators that illustrate the health and wealth of the city.  There are 152 socio-economic indicators in the Vital Signs dataset, and some are reported for multiple years which results in 295 total variables for each of the 56 Baltimore neighborhoods captured.  For this analysis, I'm throwing them all in the mixer.

As you can imagine, many of the variables are strongly correlated with each other (e.g. the percent of the population in a neighborhood that is white is inversely proportional to the percent that aren't white, so you don't necessarily need both depending on what you're trying to do with the data).  Rather than try plotting all of these variables against one another, it's possible to illustrate the degree to which the city is segregated by distilling the 295 variables into only a couple - in other words, teasing out the principal socio-economic "directions" in which communities may be close or far from each other.

(If you want to know the technical details of the analysis, check out the link at the bottom of this post to the iPython notebook.  For the sake of anyone reading this I'll try and minimize the jargon and explain some of the analysis below the result.)

**This is the key: by reducing the 295 dimensions in the dataset to only two, we can visualize a socio-economic map of the city. Neighborhoods farther apart on the map are socio-economically dissimilar and neighborhoods close to one another on the map are socio-economically similar.**

On the plot below, each bubble is a neighborhood in Baltimore and is sized by the population living in that neighborhood.  One can delineate groups or "clusters" of neighborhoods.  These are clusters of neighborhoods that are more socio-economically similar.  We can specify a number of clusters and using an algorithm (K-means clustering, described below) we can find the best way to divide the neighborhoods into clusters; each color represents a different cluster and the X's are the centers of each cluster.  The number of clusters I've chosen (seven) is somewhat arbitrary.  No axes labels are shown since the actual values output from the principal component analysis (discussed below) are meaningless.

What results is effectively a socio-economic map of Baltimore.  Use your cursor to hover over each bubble to see the name of the neighborhood.  **Again, the farther apart one bubble is from another, the more socio-economically dissimilar those neighborhoods are.**  For example, find the "Inner Harbor/Federal Hill" (upper right, grey) and "Greater Rosemont" (West Baltimore, adjacent to Gwynn Falls Park; lower left, light blue) neighborhoods.

<center>
<div>
    <a href="https://plot.ly/~jtelszasz/230/" target="_blank" title="Baltimore Vital Signs PCA w/ K-Means Clustering" style="display: block; text-align: center;"><img src="https://plot.ly/~jtelszasz/230.png" alt="Baltimore Vital Signs PCA w/ K-Means Clustering" style="max-width: 100%;width: 600px;"  width="600" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="jtelszasz:230" src="https://plot.ly/embed.js" async></script>
</div>
</center>

*"Wait, there are seven clusters but I'm only counting six different colors."* 

There's one point that is its own cluster and it isn't shown - it's the "Downtown" neighborhood, and it was a clear outlier.  I'll dig into this point and see what's going on, but my guess is that it has to do with the fact that the area is nearly all business and hardly any residences.  

## Principle Component Analysis

We can reduce the number of variables using a technique known as <a href='http://en.wikipedia.org/wiki/Principal_component_analysis'>Principal Component Analysis (PCA)</a>.  PCA reduces the full set of data (the variables of which may be correlated) to uncorrelated, or orthogonal, directions.  (Math folks: these are the eigenvectors of the covariance matrix.)  You can choose the number of dimensions in which you'd like to represent your data - the first dimension chosen will account for the most variance in the data, the next dimension (2nd principal axis) will account for the second highest portion of variance, and so on.  

To steal an analogy from <a href='http://en.wikipedia.org/wiki/Brian_Greene'>Brian Greene</a> on the topic of reducing higher dimensions (I think this was in The Elegant Universe), imagine an ant on a stretched out piece of rope.  From a far away distance, we would likely identify the position of the ant only in terms of its distance from one end of the rope.  If we zoom in closely though, we could describe the ant's location in two dimensions: both its distance from one end of the rope and its location circumferentially around the rope (a third possible dimension would be the ant's radial distance from the centerline axis of the rope, but that's virtually constant unless the ant jumps off the rope).  This same concept can be applied for reducing higher dimensional data in order to visualize relationships in data.  

We want to reduce the 295 variables in the Vital Signs dataset to two since we want to visualize this in a 2-D scatter plot.


## K-Means Clustering

<a href='http://en.wikipedia.org/wiki/K-means_clustering'>K-means clustering</a> is an algorithm that groups data points into clusters.  One could do this manually, but this algorithm automates the process by minimizing the distances from each data points to the center (centroid) of the cluster.  However, one has to specify the number of clusters for the algorithm to use.  One can imagine that to minimize the distances from each data point to the cluster center, one could set the number of clusters equal to the number of data points, i.e. each point is its own cluster, but this is a trivial solution.  Using a metric (called inertia) that measures the typical distance from points to centers, the algorithm can be run multiple times, each time using a different number of clusters, to try and achieve an acceptable result for the inertia.  I chose seven after plotting the inertia as a function of number of clusters.  This plot can be found in the iPython notebook (link below).


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
