---
layout: post
title: Baltimore Police Department Overtime & Bonuses
description: "Digging into the city salary data for the BPD."
modified: 2015-04-22
category: articles
share: true
tags: [Baltimore, cities, police, budget, open-data]
<!-- image:
  feature: design/ny_concrete_10.JPG
  credit: Fudgegraphics
  creditlink: http://www.fudgegraphics.com -->
---

As if the police haven't been in the <a href='https://twitter.com/search?q=%23blacklivesmatter&src=typd'>public eye</a> enough lately, Baltimore Brew has been <a href='https://www.baltimorebrew.com/2015/03/26/police-overtime-declines-but-is-still-targeted-to-reach-record/'>beating the drum</a> regarding police overtime budget.  <!--more-->  According to the Brew's reporting, Mayor Stephanie Rawlings-Blake promised tax cuts for residents that would be paid for by incoming tax revenue from the casino.  The mayor <a href='https://www.baltimorebrew.com/2015/04/13/its-now-official-sagging-casino-revenues-equal-no-property-tax-cut-this-year/'>recently announced</a>, however, that these cuts would not come to fruition as planned, since revenues from the casino are <a href='https://www.baltimorebrew.com/2015/03/25/horseshoe-casino-will-pay-only-4-million-in-lease-revenues-this-year/'>nowhere near the levels predicted</a>.  Meanwhile, police are able to rake in sweet, sweet overtime pay by providing a security detail at the casino.  We won't be able to see the resulting change in overtime due to the casino yet since it opened in FY2015, but in the meantime it's worth scrutinizing Baltimore police overtime and bonus closely given the broader discussion of cost-effectiveness in policing.

In fact, <a href='http://articles.baltimoresun.com/2010-06-30/news/bs-md-ci-baltimore-overtime-20100602_1_overtime-earners-deputy-mayor-christopher-thomaskutty-councilwoman-belinda-conaway'>concerns about overtime pay predate</a> the data we have through Open Baltimore, though older data might be available in <a href='http://data.baltimoresun.com/salary_database/'>other forms</a>.

To aid our investigation, <a href='http://data.baltimorecity.gov'>Open Baltimore</a> publishes annual salary and gross pay data for all of its employees.

<br>

<div><iframe width="90%" title="Baltimore City Employee Salaries 2011" height="425px" src="https://data.baltimorecity.gov/w/ijfz-2v3c/ta62-x9wp?cur=94oSZGyyLCB&from=root" frameborder="0" scrolling="no"><a href="https://data.baltimorecity.gov/City-Government/Baltimore-City-Employee-Salaries-2011/ijfz-2v3c" title="Baltimore City Employee Salaries 2011" target="_blank">Baltimore City Employee Salaries 2011</a></iframe><br><a href="http://www.socrata.com/" target="_blank">Powered by Socrata</a></div>


## Salary & Overtime Analysis

I filtered the city salary data down to just the police department, and from there broke out a few different groups of police employees where we might be interested in changes in overtime pay.  The calculations I employ are as follows:

* **Average Salary.** ($) The average salary for a group of employees.
* **Average Bonus.** ($) The average of the difference between gross pay and annual base salary (the average bonus & overtime payout) for a group of employees.
* **Average Bonus % of Salary.**  The average of the bonus/overtime divided by annual base salary for a group of employees.
* **Total Bonus Issued.** ($)  The total bonus and overtime paid to the group of employees.
* **Maximum Bonus in Group.** ($)  The maximum bonus/overtime paid in a group of employees.
* **Maximum Bonus % of Salary.**  The maximum ratio between the bonus/overtime paid and base salary for a group of employees.
* **Employee Count.**  The number of employees in the group being analyzed.


Police officers are coded in the datasets as "Police Officer" or "Police Officer (EID)."  I'm not sure what "(EID)" stands for but they are certainly cops on the payroll.  Police officers in training are another possibility, but I am not including them in the list of actual officers for this analysis.

## 2011: Furloughs

As so often happens to me when I'm plugging along on an analysis, I hit a snag, and have to backtrack to find out what's going on.  More often than not, I retrace my steps and discover some strange artifact or issue in the city's data.  This was the case here as well.

One of my starting assumptions was that I should filter out any officers whose gross pay was less than their annual salary.  Well, it turns out that this was a majority of the Baltimore Police Department in FY2011, so that's a bad idea.


<figure>
  <a href='{{ site.url }}/images/2015-04/BPD_Gross_Pay_Ratio_2011.png'><img src='{{ site.url }}/images/2015-04/BPD_Gross_Pay_Ratio_2011.png'></a>
</figure>


Half of the BPD made less than 95% of their reported annual salary in 2011.  What gives?  After a little digging, I found <a href='http://articles.baltimoresun.com/2011-01-07/news/bs-md-police-pay-cuts-20110107_1_robert-f-cherry-police-officers-bob-sledgeski'>this article</a> and I think I have an answer: furloughs.  No doubt that situation must have been rough, but based on the analysis below they've made up for it over the last couple years.  In fact, the results below show that officers themselves didn't bear the brunt of the hit - others in the BPD did.  I'm happy to be wrong and invite any Baltimore city officials to slice this a different way and let me know why 2011 payouts were smaller than salaries, but it doesn't seem like this is a data quality issue.

The following are some metrics for a few different slices of the BPD.

## All Police

The furloughs in 2011 obviously stick out here, but what we don't have is information on what overtime and bonuses were like before 2011 and the recession.  

Generally though, this certainly sets the backdrop for concerns regarding overtime pay that may be occuring at the casino.  Overtime payout has swelled to $30 million for each of the last two years and that's without the casino.  Will the total overtime paid increase beyond $30 million for FY2015?  Or will the overtime budget stay the same, with overtime duties getting shifted from one location or another to the casino?  Neither sounds like a good idea.

<figure>
  <a href='{{ site.url }}/images/2015-04/BPD_Bonus_All_Police.png'><img src='{{ site.url }}/images/2015-04/BPD_Bonus_All_Police.png'></a>
</figure>


## Police Officers

What's interesting here is that while the total bonus/overtime in 2011 was negative (furloughs) for all BPD, officers' officers in general still made on average a $1,012 bonus, to the tune of more than $2 million for all officers.  In the next section, you'll see that the **rest of the department took a $3 million hit** on gross pay, resulting in the -$1 million total bonus/overtime in 2011 for the whole police department shown above.  It's worth reminding ourselves here that police unions are a political force to be reckoned with.


<figure>
  <a href='{{ site.url }}/images/2015-04/BPD_Bonus_Officers.png'><img src='{{ site.url }}/images/2015-04/BPD_Bonus_Officers.png'></a>
</figure>


## Other Police Department (Not Officers)

On average salaries for non-officers in the BPD are comparable to police officers.  But of course, they make nowhere near the overtime and bonus available to officers.  **Compare the 19%-of-salary bonus in 2014 for police officers above to the 2%-of-salary bonus for non-officers in 2014.**


<figure>
  <a href='{{ site.url }}/images/2015-04/BPD_Bonus_Not_Officers.png'><img src='{{ site.url }}/images/2015-04/BPD_Bonus_Not_Officers.png'></a>
</figure>


## Top 20 Bonus Earners

Here's what the top of the food chain looks like for the department.  Of course, these police employees didn't have to worry during the recession - **their average bonus when the department was suffering in 2011   was $52,827.  On average, the sizes of their bonuses were equal to their salary for fiscal years 2012 through 2014.**


<figure>
  <a href='{{ site.url }}/images/2015-04/BPD_Bonus_Top20.png'><img src='{{ site.url }}/images/2015-04/BPD_Bonus_Top20.png'></a>
</figure>


## Future Work

1. **The Horseshoe Casino.**  We'll have to wait until the FY2015 data are released over at <a href='http://data.baltimorecity.gov'>Open Baltimore</a> in order to see what impact it has on bonuses/overtime.
2. **Correlating bonus/overtime pay with crime/arrests.**  All else being equal, in a democracy our tax funds are supposed to go to the people's priorities.  We should be having an open discussion about whether it is more important to fund overtime and bonus for incentivizing good policing or to hire more police and fund better training.  Neither option has an *a priori* claim to efficacy, and we should be looking for empirical methods to show where to allocate funds.  We can try correlating crime and arrest data with these police salary data and see where we get.  Wearing my scientist/analyst/reporter hat, I'll try to remain skeptical and neutral, but to be honest <a href='http://www.thisamericanlife.org/radio-archives/episode/548/transcript'>my money is on better training.</a>  

<br>

---

<p style="width: 100%; font-style: italic;">


Data obtained from <a href='http://data.baltimorecity.gov/'>Open Baltimore</a>.<br>

Analysis conducted using <a href='http://www.python.org'>Python</a>, <a href='http://pandas.pydata.org'>Pandas</a>, and <a href='http://www.plot.ly'>Plot.ly</a>.<br>

Full analysis IPython notebook can be found <a href='http://nbviewer.ipython.org/github/jtelszasz/baltimore_salaries/blob/master/BPD_overtime.ipynb'>here</a>. Admittedly, at the time of posting these notebooks are often sloppy and not well documented, but everything is there and I do make an effort to go back and clean it up.<br>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-58835878-1', 'auto');
  ga('send', 'pageview');

</script>
