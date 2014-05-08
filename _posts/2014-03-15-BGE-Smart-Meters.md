---
layout: post
title: BGE Smart Meters
description: "BGE roll out of smart meters in Baltimore metro area."
modified: 2014-05-08
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

Citizens of Baltimore and captive customers of Baltimore Gas & Electric! In the words of Gabriel, I bring you good tidings of great joy and data and stuff. For the last year or so BGE has been rolling out smart meters to their electricity customers. Our neighborhood was <a href="http://www.bge.com/smartenergy/smartgrid/smartmeters/Pages/Installation-Schedule.aspx">slated for the second half of last year</a>, and lo, our data hath appeared unto us.

BGE indicates that the smart meter upgrades have two components - electricity meter replacement (which communicates every 4 hours) and an upgrade to the natural gas meter that also enables communication (though this only happens every 24 hours). Currently, my BGE dashboard is only showing my electricity consumption so most of the discussion below only applies to electricity. I've read their website extensively but have found no indication that we'll also get to see hourly gas consumption. This is unfortunate for single family home owners who burn natural gas on site for space heating, since this is the <a href="http://www.eia.gov/todayinenergy/detail.cfm?id=10271&src=%E2%80%B9%20Consumption%20%20%20%20%20%20Residential%20Energy%20Consumption%20Survey%20(RECS)-b1">largest portion of their annual energy consumption</a>

It appears there are two primary functions the smart meters will initially serve: for providing information to their customers and to monitor the grid for outages. (Apparently even just partial implementation proved their case for grid outage notification during <a href="http://www.greentechmedia.com/articles/read/bge-gets-a-taste-of-smart-meter-capabilities-during-sandy">Hurricane Sandy</a>.) These are two pretty straight-forward applications of the data, I'm wondering where BGE (and other utilities) is headed for the next-step analysis (predictive analytics, grid efficiency and repair, optimization, renewables and storage integration, etc.)

One interesting note on the BGE data privacy policy and a bit of wishful thinking: while BGE can't disclose or sell individual customer interval data, the <a href="http://www.bge.com/smartenergy/smartgrid/Pages/Data-Privacy-Policy.aspx">BGE website</a> states "Smart Meter interval energy use data that is not specific to the customer, such as combined data, is not included within the scope of this policy." I think BGE could get ahead of the curve by providing block (or similar aggregate) data in the name of transparency and perhaps as a community service. As they indicate, aggregate data is not covered by the data privacy policy; moreover, the City of Baltimore has followed the suit of many other major cities by establishing an <a href="https://data.baltimorecity.gov">open data repository.</a> Perhaps BGE and the city could work together to post aggregated interval data to Open Baltimore.

### Comparisons to Neighbors

The BGE website does slightly more than just show you historical use, with the most prominent feature being the ability to compare your use to a sample of comparable neighbors. There have been many studies regarding energy consumption reductions as a result of real-time monitoring, feedback, and contextual comparisons (see <a href="http://www1.eere.energy.gov/seeaction/pdfs/customerinformation_behavioral_status_summary.pdf
">here</a>). In fact, a couple friends and a former professor did <a href="http://www.sciencedirect.com/science/article/pii/S0378778813003782">some work</a> on the topic.

In keeping with the data policy exclusion for aggregate data, they use an average of a hundred or so customers that share your characteristics, all within a two or three mile radius of your house (ours average 0.4 miles from us). The initial comparison with which I was presented was way off base because our heating comes from electric resistance, but once I answered a few questions on the website about what appliances we have and the like, the comparison made much more sense (I presume we're being compared against neighbors who all have electric resistance heating).

<figure>
  <a href="{{ site.url }}/images/BGE-dashboard-01.png"><img src="{{ site.url }}/images/BGE-dashboard-01.png"></a>
  <figcaption>February comparison of our electricity use to an average of a hundred or so comparable neighbors and the top 20% most efficient. (source: www.bge.com)</figcaption>
</figure>

<figure>
  <a href="{{ site.url }}/images/BGE-dashboard-02.png"><img src="{{ site.url }}/images/BGE-dashboard-02.png"></a>
  <figcaption>Monthly comparison of our electricity use to an average of a hundred or so comparable neighbors and the top 20% most efficient (based on billing data, since smart meters weren't widespread for the shown timeframe). (source: www.bge.com)</figcaption>
</figure>

Of course, the comparisons of your monthly energy use could have been done with the monthly billing they would have anyways, without the use of smart meters. Using the smart meter data, it looks like soon we'll be able to compare hour-to-hour use (lending what I would presume will be a more real-time competition feel to things) but this isn't operational yet. They are, however, displaying the hourly data along with the outdoor dry-bulb temperature for reference.

<figure>
  <a href="{{ site.url }}/images/BGE-dashboard-04.png"><img src="{{ site.url }}/images/BGE-dashboard-04.png"></a>
  <figcaption>Hourly electricity consumption (kilowatt-hours) and outdoor temperature (degrees Fahrenheit) for March 11, 2014. (source: www.bge.com)</figcaption>
</figure>

My roommate was home this day. The drop in consumption in the afternoon could be from her leaving the house and shutting off lights and her computer, the weather, or both.  Later I'll be looking into our apartment's response to the weather so it might become a bit more apparent then.

### Disaggregation and Savings Suggestions

Another feature they provide is an estimated breakdown of your electricity consumption into categories (heating, lighting, etc.) Currently, these would have to be static estimates based solely on the answers I provided about our appliances and the like. Farther down the road, the hourly data will have a larger role to play here. Electricity consumption (and energy use in general) is largely a function of two things: the weather and human behavior, both of which can change drastically hour to hour. They'll likely need about a year's worth of data to be able to tease out the portion of energy use that is your behavior and the portion that is your building's response to weather. This is because whatever algorithm they are using to disaggregate weather from behavior will need to have seen your electricity consumption during all climates.

<figure>
  <a href="{{ site.url }}/images/BGE-dashboard-06.png"><img src="{{ site.url }}/images/BGE-dashboard-06.png"></a>
  <figcaption>Estimated breakdown of electricity consumption based on customer and building characteristics. Also shown, suggestions for reducing usage. (source: www.bge.com)</figcaption>
</figure>

The disaggregation lends itself to targeted recommendations for how to reduce your electricity consumption. An interesting feature they've implemented for more social context is a counter of how many customers have indicated that they would try a particular recommendation (eg. "13,859 people will turn off their lights when not needed; 1,654 people will hang dry their laundry," etc.) In the same way that "like"-ing a post on Facebook along with many others is in some way a validation that one likes the "right" things, I can see this feature serving to validate one's choices about their energy consumption.

All in all, this is a good thing. Concerns about radio frequency exposure are rather <a href="http://www.epri.com/abstracts/Pages/ProductAbstract.aspx?ProductId=000000000001021829">unfounded</a> especially when we all carry cell phones in our pockets. If you are someone who has concerns about data privacy, nothing I have to say on the topic will likely alleviate your fears (particularly in light of the fact that I'm posting my energy usage data on a blog). In a later post, I'll show you more about my data (in the hopes that you show me yours).

UPDATE (05-08-2014): I should mention that the data services and analytics that BGE displays are all powered by <a href='http://www.opower.com/'>OPower</a>, one of the leading smart meter analytics companies out there.
