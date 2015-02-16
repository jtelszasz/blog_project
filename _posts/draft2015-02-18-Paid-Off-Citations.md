---
layout: post
title: Unpaid citations
description: ""
modified: 2015-02-18
category: articles
share: true
tags: [Baltimore, cities, parking, transportation, police, civic-hacking]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

Now that we can be sure of having a <a href='{{ site.url }}/articles/Quick-Response-From-Baltimore-Chief-Data-Officer'>complete data set</a> for the immediately preceding two years, we can take a closer look at parking citation policies and compliance.
asdf
<center>
<figure>
  <a href='{{ site.url }}/images/2015-02/Daily_Total_Fines_Unpaid.png'><img src='{{ site.url }}/images/2015-02/Daily_Total_Fines_Unpaid.png'></a>
  <figcaption>Total monthly citations for top 10 types of citation fines issued.</figcaption>
</figure>
</center>

Since the <a href='http://www.baltimoresun.com/news/maryland/sun-investigates/bs-md-speed-camera-hearing-20141201-story.html'>traffic camera program ended in Baltimore in 2013</a> it appears enforcement policies have taken a dramatic turn to make up some of the lost revenue.  Moreover, judging by the spike this past December, I'd hazard a guess that either year-end budgets were looking tight or that goals or quotas had been set at the beginning of the year and were not being met.

<div>
    <a href="https://plot.ly/~jtelszasz/32/" target="_blank" title="Justin&#39;s Energy Usage" style="display: block; text-align: center;"><img src="https://plot.ly/~jtelszasz/32.png" alt="Justin&#39;s Energy Usage" style="max-width: 100%;width: 400px;"  width="400" onerror="this.onerror=null;this.src='https://plot.ly/404.png';" /></a>
    <script data-plotly="jtelszasz:32" src="https://plot.ly/embed.js" async></script>
</div>


## What locations are they targeting?

Between January 20, 2013 and January 20, 2015, citations were issued at 38,597 unique locations.  **1.2% of those locations account for 45.8% of the total value of fines issued.**  What were the target locations?  Here are the top 20 locations in terms of total fines issued.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-02/Top20_Target_Locations.png'><img src='{{ site.url }}/images/2015-02/Top20_Target_Locations.png'></a>
  <figcaption>Top 20 Target Citation Locations.</figcaption>
</figure>
</center>

### University of Baltimore

I would post a map, but I haven't been able to confirm that "U/B" is University of Baltimore, especially since some of the street names aren't near the university.  University students are prime candidates for parking tickets though, so it does make sense that so many citations are issued there.

### 1200 Block of N. Charles St.

The 1200 block of N. Charles St. just happens to be the block I live on.  As soon as I discovered that, I had an inkling as to the reason why this would be the case and the data back this up.  This road turns into a major thoroughfare for commuters driving north out of downtown to head back to the 'burbs, and as far as Charles St. goes this block is probably the block on which cars are most likely to be stopped and blocking traffic due to the number of businesses and close proximity of University of Baltimore.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-02/1200_Block_N_Charles.png'><img src='{{ site.url }}/images/2015-02/1200_Block_N_Charles.png'></a>
  <figcaption>Total fines issued at 1200 block of N. Charles St. in Baltimore, MD between January 20, 2013 and January 20, 2015.</figcaption>
</figure>
</center>

There's a Starbucks on one corner with a Chipotle next to it, immediately in front of which there is a bus stop.  In addition to the Starbucks and Chipotle, there are a number of other businesses (frozen yogurt, licquor store, other restaurants) that presumably all take deliveries at regular intervals.  On numerous occasions I've walked past and a large truck or semi is parked at the bus stop with a ticket on its windshield.  This would explain at least the "In Transit Zone/Stop," but I do wonder at how consistent parking police are in their coding of citations.

Street parking immediately behind the bus stop shown below is prohibited weekdays between 4pm and 6pm, which the data show is another large revenue generator.   

<center>
<iframe src="https://www.google.com/maps/embed?pb=!1m0!3m2!1sen!2sus!4v1423505612169!6m8!1m7!1sfA92b-gWtpBw7_rLxBABSQ!2m2!1d39.30448!2d-76.616122!3f141.43900848353474!4f-17.57579463067043!5f0.7820865974627469" width="600" height="450" frameborder="0" style="border:0"></iframe>
<figcaption>Starbucks on 1200 block of N. Charles St. in Baltimore, MD with bus stop.</figcaption>
</center>

It's interesting that such a large number of fines are coded as "No Stopping/Parking Stadium Event Cambden"  since Cambden Yards isn't nearby or even on Charles St.  Again, makes me wonder at how the parking police are trained to code the infractions.

---
*Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore.</a>*

*Analysis conducted using <a href='http://www.python.org'>Python</a> and <a href='http://pandas.pydata.org'>Pandas</a>*

*I recently had my laptop stolen. I don't feel like purchasing Microsoft Office, so I'm using a combination of Apple Numbers and Google Docs for spreadsheets now.*

