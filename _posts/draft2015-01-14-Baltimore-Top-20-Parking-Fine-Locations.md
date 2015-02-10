---
layout: post
title: Wringing $3,500,000 Out of One Intersection in Baltimore
description: "A look at Baltimore parking citation data."
modified: 2015-01-14
category: articles
share: true
tags: [Baltimore, cities, parking, transportation]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

The title of the dataset I'm working with on Baltimore's <a href='http://data.baltimorecity.gov/'>open data portal</a> is "Parking Citations."

<center>
<div><iframe width="500px" title="Parking Citations" height="425px" src="https://data.baltimorecity.gov/w/n4ma-fj3m/ta62-x9wp?cur=i5SwBTR0Hvd&from=root" frameborder="0" scrolling="no"><a href="https://data.baltimorecity.gov/Transportation/Parking-Citations/n4ma-fj3m" title="Parking Citations" target="_blank">Parking Citations</a></iframe><p><a href="http://www.socrata.com/" target="_blank">Powered by Socrata</a></p></div>
</center>

But parking is not the only thing captured in this set.

The citation data date back and up to about the last week (the last record I have in my downloaded set was January 9, 2015).  My dataset ends up being 2,689,647 total citations.  

I noticed immediately that there's something else captured in these data besides just parking: this dataset includes traffic camera violations, which is far and away the city's largest revenue generator out of all of the infraction types captured here.  The speed cameras have issued $28 million in citations since July 9, 2012.  

<center>
<figure>
  <a href='{{ site.url }}/images/2015-01/Citation Descriptions.png'><img src='{{ site.url }}/images/2015-01/Citation Descriptions.png'></a>
  <figcaption>Citation descriptions sorted by total fines issued since July 9, 2012.</figcaption>
</figure>
</center>

It's clear that the number 1 and number 3 citation types result from automated systems, but it seems that Red Light Violations are combined from automated cameras as well as manual citations issued by police.  I also think it's telling that Red Light Violations are number 2 in terms of total fines issued, since I've often heard complaints that traffic lights are not timed well in Baltimore and result in many people running red lights.  In order to determine if Baltimore is an excpetional case for this issue, though, we'd probably need a couple other datasets - ciations from other cities as well as a way to normalize per vehicle owned in city limits or per capita (though maybe commuters into the city are more likely to violate, and that may bias results).

Also shown is the number of unique locations at which each of the citation types have been issued.  This gives an indication how concentrated particular policing tactics might be.  Of course cameras are fixed locations so 

To get a sense of where Baltimore police targets for parking enforcement we can sum up the ticket counts and the total value of the tickets issued to look at the target enforcement spots.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-01/Top20_Parking_Fines_Blocks.png'><img src='{{ site.url }}/images/2015-01/Top20_Parking_Fines_Blocks.png'></a>
  <figcaption>Top 20 locations in Baltimore by total parking violation fines issued since July 9, 2012.</figcaption>
</figure>
</center>

And below is a map of their locations.

<iframe src="https://www.google.com/maps/d/embed?mid=z14mtc2vy9S0.kfRYQvw5fEU0" width="640" height="480"></iframe>

Far and away, the biggest revenue generator is the 2600 block of Gwynn Falls Parkway.  But why?


---
*Data obtained from <a href='http:https://data.baltimorecity.gov/'>Open Baltimore.</a>*

*Analysis conducted using*

*Inspiration from*