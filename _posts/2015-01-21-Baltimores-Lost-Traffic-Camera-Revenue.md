---
layout: post
title: The Lost Revenue of the Baltimore Traffic Cameras
description: "A look at Baltimore parking citation data."
modified: 2015-01-21
category: articles
share: true
tags: [Baltimore, cities, parking, transportation, police]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

The title of the dataset I'm working with on Baltimore's <a href='http://data.baltimorecity.gov/'>open data portal</a> is "Parking Citations."  I downloaded a snapshot of the dataset which ended up being 2,689,647 total citations through January 12, 2015. 

<center>
<div><iframe width="500px" title="Parking Citations" height="425px" src="https://data.baltimorecity.gov/w/n4ma-fj3m/ta62-x9wp?cur=i5SwBTR0Hvd&from=root" frameborder="0" scrolling="no"><a href="https://data.baltimorecity.gov/Transportation/Parking-Citations/n4ma-fj3m" title="Parking Citations" target="_blank">Parking Citations</a></iframe><p><a href="http://www.socrata.com/" target="_blank">Powered by Socrata</a></p></div>
</center>

But parking is not the only thing captured in this set. Traffic camera violations are also here ("Fixed Speed Cameras," "Mobile Speed Cameras," and probably some "Red Light Violations" and "Right on Red" citations) which were far and away the city's largest revenue generator out of all of the infraction types captured here.  The fixed speed cameras alone issued nearly $28 million in citations over a three year period, until the <a href='http://www.baltimoresun.com/news/maryland/sun-investigates/bs-md-speed-camera-hearing-20141201-story.html'>program was ended</a>.  The last two rows appear to be one-off citations.  It's also curious that the last record of a "Snow Emergency Route Violation" was in August. In Baltimore.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-01/citation_desc_date_range_OLD.png'><img src='{{ site.url }}/images/2015-01/citation_desc_date_range_OLD.png'></a>
  <figcaption>Citation descriptions sorted by total fines.  Highlighted in red are the least recent dates of the last recorded citation and the shortest data time spans, respectively.  Highlighted in green are the largest annual revenue generators.</figcaption>
</figure>
</center>

This all isn't quite syncing up with what the <a href='http://www.baltimoresun.com/news/maryland/sun-investigates/bs-md-speed-camera-hearing-20141201-story.html'>Baltimore Sun reported</a> about the traffic camera program.  According to this article, the traffic camera program generated about $140 million over 10 years.  The data contained in Baltimore's open data portal must be incomplete, since I'm seeing a total of about $127 million for all violation types, not just cameras.  

To show this a bit more dramatically, here's the time series of total monthly citations issued for the top 10 revenue generator categories.  It's pretty clear that the data are incomplete since the traffic camera categories should have dominated for 10 years straight, and we're seeing no significant records before 2007, even though the earliest start dates shown in the table above show dates typically starting in 2002-2003, with "Red Light Violations" starting in 1999.  Unfortunately, the Baltimore open data portal does not provide a data dictionary or substantive description of what all is contained in the dataset and what each field represents.  For example, in addition to "violFine," there are "balance," "openFine," and "openPenalty" fields which all include "$" signs in the records to indicate currency.  These aren't defined anywhere.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-01/Top10_Monthly_Citation_TS_OLD.png'><img src='{{ site.url }}/images/2015-01/Top10_Monthly_Citation_TS_OLD.png'></a>
  <figcaption>Total monthly citations for top 10 revenue generators.</figcaption>
</figure>
</center>

I wouldn't say that the lack of definitions and descriptions of the data render them completely useless, but it does make it more difficult to make apples-to-apples comparisons and draw conclusions.

---
This is a new section I'm adding, inspired by Ben Wellington's excellent blog <a href='http://iquantny.tumblr.com'>I Quant NY</a>.

*Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore.</a>*

*Analysis conducted using <a href='http://www.python.org'>Python</a>, <a href='http://pandas.pydata.org'>Pandas</a>, and Microsoft Excel.*

*Inspiration from <a href='http://iquantny.tumblr.com'>I Quant NY</a>.*