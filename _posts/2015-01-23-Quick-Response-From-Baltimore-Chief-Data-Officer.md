---
layout: post
title: Quick Response from Baltimore Chief Data Officer
description: "Baltimore City's CDO quickly responded to issues with citation data."
modified: 2015-01-23
category: articles
share: true
tags: [Baltimore, cities, parking, transportation, police]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

Within hours of publishing my last post on <a href='{{ site.url }}/articles/Baltimores-Lost-Traffic-Camera-Revenue/'>Baltimore's parking (etc.) citation dataset</a>, the issues were corrected thanks to Sharon Paley at <a href='http://www.hackbaltimore.org'>Hack Baltimore</a> and Heather Hudson, Baltimore's Chief Data Officer in the <a href='http://moit.baltimorecity.gov/Home.aspx'>Mayor's Office of Information Technology</a>.

Sharon was kind enough to forward my work on to Heather, who removed old and extraneous data and added some description to some of the citation data fields.  With Heather's permission I've excerpted her email below.

> The dataset should, and now does, reflect 2 rolling years of citations and any older citations that still have an outstanding balance. The data was not being updated and purged consistently, resulting in older citations still appearing. These older citation records were likely not updated properly (balance, penalty, etc), so have now been purged from the dataset.

> The reason for the 2 year  limited time frame of the dataset is that the Parking Citations system is housed on a mainframe, which has storage limitations. We are also forced to re-use citation numbers, which necessitates purging of older citation records.

> Thanks to your article, I have added a more informative description of the dataset, as well as short descriptions of the currency columns you mentioned. I hope that this helps users better understand the data presented.


## So what do the data look like now?  

<center>
<div><iframe width="500px" title="Parking Citations" height="425px" src="https://data.baltimorecity.gov/w/n4ma-fj3m/ta62-x9wp?cur=i5SwBTR0Hvd&from=root" frameborder="0" scrolling="no"><a href="https://data.baltimorecity.gov/Transportation/Parking-Citations/n4ma-fj3m" title="Parking Citations" target="_blank">Parking Citations</a></iframe><p><a href="http://www.socrata.com/" target="_blank">Powered by Socrata</a></p></div>
</center>

I exported another csv file the evening of January 21 that resulted in 1,004,288 rows (compared to about 2.7 million rows previously, meaning **63% of the dataset was erroneous and discarded**).  Total fines issued in the whole datset now amount to just over $48 million.  

<center>
<figure>
  <a href='{{ site.url }}/images/2015-01/Top10_Monthly_Citation_TS_NEW_2015-01-21.png'><img src='{{ site.url }}/images/2015-01/Top10_Monthly_Citation_TS_NEW_2015-01-21.png'></a>
  <figcaption>Total monthly citations for top 10 revenue generators.</figcaption>
</figure>
</center>

## Why are there still data in here from before January 21, 2013 (2 years before the date I downloaded this set)?  

Well, you wouldn't want to remove information about citations that haven't been paid in full yet.  484,146 records (out of just over 1 million, or about half) are from before 2 years ago because they haven't been paid in full.  I confirmed that there are zero records for which the import date is more than two years old and does not have an outstanding balance (if going by the violation date, there are 16 records as of Jan. 21, 2015 older than two years with a zero balance in the database).  

What this means is that we effectively have two datasets here: one for accounts with open balances from before the rolling 2 year date and one for all citations (regardless of balance) for the last 2 years rolling.  Lumping them all together wouldn't yield apples-to-apples comparisons or indicate policy changes properly since we're missing citation records that have been paid and were issued/imported more than two years ago.  We can however do this with the data for the most recent 2 years.  I suppose the pre-2-years ago data could be considered the "delinquent" batch and data for the most recent 2 years could be called the "full 2 year" batch.

## How much money is owed to the city?

This is the kicker.  Looking only at the old citations prior to January 21, 2013?  The outstanding balance is **$102,384,876.00**, and that's on citations that would have originally been worth only $23,873,386.00.  In other words, for still-open tickets prior to January 21, 2013, the city is owed more than **4 times the value** of the initial citations.  Wonder if the city has a plan of attack for reeling some of this in?  The wages of parking police probably pale in comparsion to the value of these citations, so maybe they see this as free money that they'll never make the effort to get, having already paid the overhead. Of course there are logistical and legal challenges to enforcing these as well, but this is surely money the city of Baltimore could use.

Thanks again to Sharon at Hack Baltimore and Heather, our city's Chief Data Officer, for helping to keep our government's open data clean, current and useful.

---
*Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore.</a>*

*Analysis conducted using <a href='http://www.python.org'>Python</a>, <a href='http://pandas.pydata.org'>Pandas</a>, and Microsoft Excel.*

