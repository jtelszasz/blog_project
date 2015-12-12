---
layout: post
title: Rapid Increase in Citations
description: "Showing the top 25 locations in difference between September 2013 and March 2014 citations."
modified: 2015-02-24
category: articles
share: true
tags: [Baltimore, cities, transportation, open-data]
---

The total number of parking citations in Baltimore exploded between September 2013 and March 2014.  

{% maincolumn 'images/2015-02/Total_Monthly_Citations.png' 'Total monthly citations in Baltimore, Maryland.' %}

<!--more-->

One can imagine that this explosion resulted from particular areas being targeted, rather than every block in Baltimore experiencing a proportional increase in citations issued.  Below are the top 25 blocks in terms of the difference between parking citations issued in the month of September 2013 and March 2014.

{% maincolumn 'images/2015-02/Top_25_Increase_Citations_Sept13_Mar14_Locs.png' 'Top 25 locations, difference in September 2013 and March 2014 total citations.' %}

I've removed the "U/B" locations from the map below because it isn't clear exactly which block those were issued on.  I tried reaching out to the Baltimore data people about it but haven't had luck yet.  I believe they're University of Baltimore locations, so suffice it to say that University of Baltimore has also become a target for parking enforcement.


<iframe src="https://www.google.com/maps/d/embed?mid=z14mtc2vy9S0.kY9jDpceZb5g" width="52%" height="480"></iframe>


The locations are wholly predictable.  The stretch of North Charles Street through Mt. Vernon, Light Street in Federal Hill, Harbor East, Fells Point, and some spots near hospitals.  

### 5100 Roland Ave.

The only one that appears somewhat random is the 5100 block of Roland Avenue.  Citations clearly exploded here...

{% maincolumn 'images/2015-02/5100_Roland_Citations.png' 'Total citations for last 2 years at 5100 Roland Ave.' %}

...and here are the counts of the total citations for the last two years at 5100 Roland Ave. by citation type.


{% maincolumn 'images/2015-02/5100_Roland_Desc_Counts.png' 'Number citations for last 2 years at 5100 Roland Ave. by description.' %}

"All other parking meter violations" really doesn't help sort out what the cause is, but looking at the Google Map street view one can see a 2 hour parking sign.  The curb also looks like it's non-existent, so I'm wondering if people put their tires into the grass and then get cited.

<iframe src="https://www.google.com/maps/embed?pb=!1m0!3m2!1sen!2sus!4v1424798998803!6m8!1m7!1soBC2bNc1uJIKNHPSkBn7ug!2m2!1d39.35523!2d-76.634564!3f223.74393718454644!4f-16.088865868843556!5f0.7820865974627469" width="52%" height="450" frameborder="0" style="border:0"></iframe>


### "400 LOT JFA"

I've also manually located the "400 LOT JFA" location on the map - I believe this is a parking lot under the Jones Falls Expressway, and the only one near a 400 block address is the one I've located.  Looking at the data, the police didn't even start ticketing at this location until February 2014.  Again, "All other parking meter violations" is the dominant mode of citation, so I really don't have a clue what might be going on.



{% marginnote 'parkopedia' 'Parking lot map courtesy <a href="http://www.parkopedia.com">Parkopedia.com</a>' %}
<iframe src="http://en.parkopedia.com/parking/garage/jones_falls_expressway_jfa/21202/baltimore/?embed=600x400&l=1&tc=1&zc=1&country=US&ts[]=4&ts[]=3&ts[]=2" frameborder="0" width="52%" height="400" scrolling="no"></iframe>

{% maincolumn 'images/2015-02/400_Lot_JFA_Desc_Counts.png' 'Total citations for last 2 years at 400 lot of Jones Falls Expressway (JFA) by description.' %}

<br>

<!-- <figure>
  <a href='{{ site.url }}/images/2015-02/400_Lot_JFA_Desc_Counts.png'><img src='{{ site.url }}/images/2015-02/400_Lot_JFA_Desc_Counts.png'></a>
  <figcaption>Total citations for last 2 years at 400 lot of Jones Falls Expressway (JFA) by description.</figcaption>
</figure> -->


---

<p style="width: 100%; font-style: italic;">

Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore.</a><br>

Analysis conducted using <a href='http://www.python.org'>Python</a> and <a href='http://pandas.pydata.org'>Pandas</a>.

