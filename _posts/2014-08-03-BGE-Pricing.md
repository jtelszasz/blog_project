---
layout: post
title: BGE Residential Pricing Plans
description: "Using Green Button sample data and BGE residential pricing plans."
modified: 2014-08-03
category: articles
tags: [BGE, Green-Button, data, electricity, cost]
image:
  feature: texture-feature-01.jpg
  credit: Texture Lovers
  creditlink: http://texturelovers.com
---

A quick blurb on a couple of pieces of the demand-side storage puzzle I'm working on.

First, turns out I'm going to use the Green Button sample data that I <a href='{{ site.url }}/articles/feeding-the-data-monster'>previously found</a>.  They have <a href='http://services.greenbuttondata.org/sample-data.html'>several of these datasets posted</a> that may be interesting for comparison later.  It took an embarassing amount of time to sort out my first time parsing an XML file.  Word of advice for you data/Python peoples: don't use ElementTree, I used BeautifulSoup and it was much simpler.

<figure>
  <a href="{{ site.url }}/images/Green_Button_Sample_Inland_Single_Family_Daily.png"><img src="{{ site.url }}/images/Green_Button_Sample_Inland_Single_Family_Daily.png"></a>
  <figcaption>Green Button sample hourly data for inland single family residence, resampled to daily.</figcaption>
</figure>

Definitely nice to have a full year worth of clean data.  You can also clearly see the bump up in summer usage from A/C loads.

In sorting out the demand-side storage question, I also took a look at what pricing schemes BGE has on offer.  They currently have the normal <a href='http://www.bge.com/myaccount/billsrates/ratestariffs/electricservice/Electric%20Services%20Rates%20and%20Tariffs/P3_SCH_R.pdf'>residential plan ("R")</a>, a <a href='http://www.bge.com/myaccount/billsrates/ratestariffs/electricservice/Electric%20Services%20Rates%20and%20Tariffs/P3_SCH_RL.pdf'>residential time-of-use, or TOU, plan ("RL")</a>, and a <a href="http://www.bge.com/myaccount/billsrates/ratestariffs/electricservice/Electric%20Services%20Rates%20and%20Tariffs/ScheduleEV.pdf">plan for electric vehicle customers ("EV")</a>.  All of the actual costs for peak, off-peak, and intermediate are found <a href='http://www.bge.com/myaccount/billsrates/ratestariffs/electricservice/Electric%20Services%20Rates%20and%20Tariffs/Rdr_1.pdf'>here</a>.  Obviously, there are a proverbial shit-ton of other nickel-and-dime tariffs, but since they're paid per kilowatt-hour and aren't tied to the actual price of electricity itself.  I'm assuming for the sake of comparison that the total number of kilowatt-hours you use is independent of the pricing plan you have. 

Here's what the three pricing plans look like for weekdays in summer and non-summer periods.

<figure>
  <a href="{{ site.url }}/images/BGE_Pricing_Summer.png"><img src="{{ site.url }}/images/BGE_Pricing_Summer.png"></a>
  <figcaption>BGE residential pricing plans, summer weekday.</figcaption>
</figure>

<figure>
  <a href="{{ site.url }}/images/BGE_Pricing_Non-Summer.png"><img src="{{ site.url }}/images/BGE_Pricing_Non-Summer.png"></a>
  <figcaption>BGE residential pricing plans, non-summer weekday.</figcaption>
</figure>







