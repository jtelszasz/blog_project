---
layout: post
title: Baltimore Policing, Six Months After F.G.
description: A look at how the Freddie Gray unrest affected policing in Baltimore in 2015.
modified: 2015-11-12
category: articles
share: true
tags: [Baltimore, crime, police, open-data]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

We're about six months out now from the Freddie Gray incident and subsequent unrest in Baltimore.  There have been a few dominant narratives about crime in Baltimore since, namely that we've had almost <a href="http://data.baltimoresun.com/bing-maps/homicides/index.php?show_results=UPDATE+MAP&range=2015&district=all&zipcode=All&cause=all&age=all&gender=all&race=all&article=all">300 homicides</a>, that <a href="http://www.baltimoresun.com/news/maryland/bs-md-ci-comstat-meeting-20150616-story.html">police stopped doing their jobs after the protests</a>, and that enough prescription drugs had flooded the streets to "<a href="http://www.baltimoresun.com/news/maryland/baltimore-riots/bal-drugs-on-baltimore-streets-could-keep-it-high-for-a-year-batts-says-20150604-story.html">keep Baltimore high for a year</a>."  

So what has actually gone on in Baltimore in the weeks and months since the spring of 2015?  I think there are a couple of important storylines in the data.

## Precipitous drop in police productivity - on track for 10,000 less arrests this year than last.

We're on pace to record 10,000 less arrests this year compared to last.  Total arrests for 2013 and 2014 were both on the order of 36,000 and this year, looking at total records through September, it's looking like it will be more like 26,000.  (The average daily arrests for January through September is extrapolated through the rest of the year.)  There's a substantial downtick in arrests in the last quarter of the year for both 2013 and 2014 though, so the 26,000 number could in fact be high.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-11/Total_Monthly_Arrests.png'><img src='{{ site.url }}/images/2015-11/Total_Monthly_Arrests.png'></a>
  <figcaption>Monthly arrests in Baltimore for 2013, 2014, and 2015.  Click image to enlarge.</figcaption>
</figure>
</center>

This kind of output isn't the result of a drastic change in the size of the police force either.  The number of officers for 2013, 2014, and 2015 are 2,316, 2,278, and 2,224 respectively, resulting in average annual arrests per officer going from just over 17, to just over 16, *down to 12 arrests per officer this year*.  This means there had to have been a shift in policing tactics this year.

## Drug-related arrests have continued the same downward trend as preceded Freddie Gray.

Former Commissioner Batts also claimed that during the unrest, enough prescription drugs from pharmacies had been stolen to "<a href="http://www.baltimoresun.com/news/maryland/baltimore-riots/bal-drugs-on-baltimore-streets-could-keep-it-high-for-a-year-batts-says-20150604-story.html">keep Baltimore high for a year</a>."  If that were the case, I'd expect our police force to up their game and target known drug havens, resulting in more arrests.  That hasn't happened, though.  In fact, the proportion of controlled dangerous substance charges as a proportion of total arrests has actually continued the same downward trend from the previous two years.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-11/Percent_Weekly_CDS.png'><img src='{{ site.url }}/images/2015-11/Percent_Weekly_CDS.png'></a>
  <figcaption>Percent weekly arrests that are CDS-related, Baltimore in 2015.  Click image to enlarge.</figcaption>
</figure>
</center>

## During the week following the "riots," Baltimore Police focused *entirely* on curfew violations.

The total weekly arrests dropped dramatically in the weeks following the Freddie Gray unrest.  The head of the FOP said that cops were <a href="http://baltimore.cbslocal.com/2015/06/02/commissioner-batts-stolen-prescription-drugs-partly-to-blame-for-surge-in-violence/">"more hesitant" but that there was not a "slowdown"</a> (a claim Former Commissioner Batts <a href="http://www.thedailybeast.com/cheats/2015/09/03/ex-baltimore-top-cop-admits-to-slowdown.html">later reversed</a>).  This always sounded to me like a contradiction in terms: if someone is more hesitant to do something, they are less likely to do it.  We now know there was a slowdown, but it didn't come until after officers were charged.  What were they up to prior to that?

<center>
<figure>
  <a href='{{ site.url }}/images/2015-11/Top5_Arrest_Counts.png'><img src='{{ site.url }}/images/2015-11/Top5_Arrest_Counts.png'></a>
  <figcaption>Top 5 charges before and after Monday, April 27 unrest.  Click image to enlarge.</figcaption>
</figure>
</center>

In the week immediately following the <a href="http://www.motherjones.com/politics/2015/04/how-baltimore-riots-began-mondawmin-purge">police-induced rioting on Monday, April 27</a>, cops were entirely focused on curfew violations.  It wasn't until after that week that we saw the drop in total arrests.

## Besides homicides, first degree assaults and gun-related offenses have relatedly increased.

Much has been made of the increase in violence since the summer.  Indeed first degree assaults and gun-related offenses both increased over the summer and remain elevated compared to earlier in the year.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-11/Percent_Weekly_Guns.png'><img src='{{ site.url }}/images/2015-11/Percent_Weekly_Guns.png'></a>
  <figcaption>Percent of weekly arrests that are gun-related.  Click image to enlarge.</figcaption>
</figure>
</center>

---
*All data, including BPD arrests and city employee payrolls, obtained from <a href="http://data.baltimorecity.gov/">Open Baltimore</a>.*

*Analysis conducted using <a href="http://www.python.org">Python</a>, <a href="http://pandas.pydata.org">Pandas</a>, and <a href="http://www.plot.ly">Plot.ly</a>.*

*Full analysis IPython notebook can be found <a href="https://github.com/jtelszasz/baltimore_crime/">here</a>.*

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58835878-1', 'auto');
  ga('send', 'pageview');

</script>
