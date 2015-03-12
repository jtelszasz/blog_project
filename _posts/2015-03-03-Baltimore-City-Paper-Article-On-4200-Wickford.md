---
layout: post
title: Investigating City Paper's Claims About 4200 Wickford
description: "Following up on a recent City Paper article."
modified: 2015-03-03
category: articles
share: true
tags: [Baltimore, cities, parking, transportation, police, civic-hacking, data-journalism]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

Baltimore's City Paper recently <a href='http://www.citypaper.com/news/mobtownbeat/bcp-victims-of-a-unique-baltimore-parking-problem-fight-the-law-and-the-law-wins-20141216,0,5288351.story'>took a look at a unique parking situation</a> in Baltimore at the 4200 block of Wickford Road.  Unfortunately, they didn't take a peek at the same open data for parking citations I've been investigating lately.

This road is a small two-way street in a quiet, wealthy neighborhood adjacent to the Johns Hopkins University campus called Keswick.  The street is narrow, and so vehicles typically park on either side with their tires past the curb which is illegal.  Apparently they also occasionally park on the left facing the wrong direction.  

Start here in Google Street View and work your way north - the street is indeed quite narrow and most cars (save for maybe the Smart car) are parked with their two right tires over the curb.  The Smart car and several others are parked on the left side facing the wrong direction.

<center>
<iframe src="https://www.google.com/maps/embed?pb=!1m0!3m2!1sen!2sus!4v1425404187666!6m8!1m7!1sgYu398RNv4HjfPUXZxCNiQ!2m2!1d39.339469!2d-76.627132!3f28.763235779444777!4f-26.84351693465949!5f0.7820865974627469" width="600" height="450" frameborder="0" style="border:0"></iframe>
</center>

What is curious is that the <a href='https://data.baltimorecity.gov/Transportation/Parking-Citations/n4ma-fj3m'>open data for parking citations</a> at the 4200 block of Wickford Rd. are not showing a rampant citation issue as the article or residents suggest.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-03/4200_Wickford.png'><img src='{{ site.url }}/images/2015-03/4200_Wickford.png'></a>
</figure>
</center>

In fact, here is the full list of citations at the 4200 block of Wickford Rd. from the parking citation data.

<center>
<figure>
  <a href='{{ site.url }}/images/2015-03/4200_Wickford_Citation_Table.png'><img src='{{ site.url }}/images/2015-03/4200_Wickford_Citation_Table.png'></a>
</figure>
</center>

It truly pales in comparison to some of the <a href='{{ site.url }}/articles/Rapid-Increase-In-Citations/'>blocks I've been looking at recently</a>.  The article claims that parking tickets have appeared in the middle of the night, "depicting the parking enforcement agents as thieves in the night."  It looks like that actually was the case a couple few times - around 4:30am on April 4 and 10, 2014, and around 2:30am on April 18, 2014.  But overall, this article and the residents on this block appear to be making something out of nothing.  The grand total of fines issued for the 41 citations above is $1,312.

---
*Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore.</a>*

*Analysis conducted using <a href='http://www.python.org'>Python</a> and <a href='http://pandas.pydata.org'>Pandas</a>*

*Full analysis IPython notebook can be found <a href='http://nbviewer.ipython.org/github/jtelszasz/baltimore_citations/blob/master/citation_analysis.ipynb'>here</a>.*

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58835878-1', 'auto');
  ga('send', 'pageview');

</script>
