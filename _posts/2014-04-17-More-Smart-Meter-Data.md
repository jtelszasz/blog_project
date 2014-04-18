---
layout: post
title: More Smart Meter Data...
description: "Downloaded another snapshot of the smart meter data."
modified: 2014-04-17
category: articles
tags: [BGE, smart-meters, energy, data, electricity]
image:
  feature: texture-feature-05.jpg
  credit: Texture Lovers
  creditlink: http://texturelovers.com
---

<section id="table-of-contents" class="toc">
  <header>
    <h3>Contents</h3>
  </header>
<div id="drawer" markdown="1">
*  Auto generated table of contents
{:toc}
</div>
</section><!-- /#table-of-contents -->

In an  <a href="{{ site.url }}/articles/My-BGE-Smart-Meter-Data">earlier post</a>, I showed initial descriptive plots for my electricity use.  Now that we have some more data, we can break these up to see differences as the spring season progresses.

<figure class="half">
  <a href="{{ site.url }}/images/ElecHist - Feb2014.png"><img src="{{ site.url }}/images/ElecHist - Feb2014.png"></a>
  <a href="{{ site.url }}/images/ElecHist - Mar2014.png"><img src="{{ site.url }}/images/ElecHist - Mar2014.png"></a>
  <figcaption>Histograms for February and March 2014 electricity consumption.</figcaption>
</figure>

Another way of showing the difference in each month's energy consumption patterns would be the cumulative distribution.

<figure>
  <a href="{{ site.url }}/images/ElecCDF - Feb_March2014.png"><img src="{{ site.url }}/images/ElecCDF - Feb_March2014.png"></a>
  <figcaption>Histogram for February 2014 electricity consumption.</figcaption>
</figure>

The plot above shows that for a given hourly kilowatt-hour amount, the proportion of hours at which the consumption was that amount or less is substantially higher in March than in April; of course, we'd expect that with the warmer weather.  For example, about 18% of the time in February the hourly consumption was 1 kilowatt-hour or less, while in March it was the case about 70% of the time.






