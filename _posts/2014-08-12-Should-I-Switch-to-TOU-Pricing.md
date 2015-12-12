---
layout: post
title: Should I Switch to Time-of-Use Pricing?
description: "Evaluating my energy use and BGE dynamic pricing."
modified: 2014-08-12
category: articles
share: true
tags: [energy, electricity]
---

Now that I've got BGE's available <a href='{{ site.url }}/articles/BGE-Pricing'>residential time-of-use plans</a>, I can evaluate whether I would save money by switching to one.  <!--more-->

At each hour, I multiply the cost of electricty by the electricity usage for that hour.  To give an apples-to-apples comparison, I'm using the current 2014-2015 rates and assuming there weren't any rate changes.  Also, I'm only looking at the actual cost of the commodity, not all the fees and rates ("riders") that get tacked on.  Those additional costs add up to about 40% of your electricity bill, but since they're not affected by the rate being charged for the electricity they'd be the same for each plan.  (In fact there was a change at on June 1, 2014, and there always will be changes.)  Again, the plans are "R" (basic), "RL" (time-of-use), and "EV" (aggressive time-of-use for electric vehicle owners).  The plot below shows the savings for the "RL" and "EV" plans as compared to what I would have paid with the "R" plan.

{% marginfigure 'cost-savings' 'images/2014-08/My_Cost_Savings_TOU_Pricing.png' 'Cost savings in U.S. dollars on monthly electricity bill compared to BGE residential "R" plan. <a href="/images/2014-08/My_Cost_Savings_TOU_Pricing.png">Click here to enlarge</a>.' %}

As a sanity check, the actual electricity cost for July on the "R" plan matches pretty closely what's actually on our bill for July.  The bill is for 670 kWh at $0.08857/kWh for a total electricity supply cost of $59.34.  My hourly data shows 671.6 kWh usage for July (not sure why there is a difference here from the bill) and with the regular "R" plan at $.08975/kWh the supply cost would have been $57.87.  (As a sidenote, I'm unclear as to what what the difference is between the $.08857/kWh cost that is billed and the $.08975/kWh cost that is listed as the summer kWh prices as of June 1, 2014. <a href='http://www.bge.com/myaccount/billsrates/ratestariffs/electricservice/Electric%20Rates%20Information%20Documents/POLR_Rates_PTC_MiscCharges.pdf'>This</a> lists both of those figures, but footnote 1 in the table in the upper right table doesn't really explain the adjustment that well.)

In terms of savings with dynamic pricing plans, we'd pretty clearly benefit during the summer months.  At the new place during the week, we shut pretty much everything off during the day and only use air conditioning at night.  Moreover, our water heating is electric which leads to much higher peak electricity demands during early mornings and late evenings (particularly in the mornings when we shower).  We'd therefore be taking advantage of the cheaper electricity prices during off-peak hours.  At the old place our heat is part (large part) of the electricity load and during the winter and spring months, our thermostat was operational most hours of most days, and so there are less opportunities for savings since our load isn't skewed towards off-peak hours.  Shown below again is our typical usage at the old (March 2014) and new (June 2014) apartments (original post is <a href='{{ site.url }}/articles/Mo-Apartment-Mo-Energy'>here</a>).  

{% maincolumn 'images/2014-08/Average_Days_New_and_Old_Apts.png' 'Average hourly electricity demand. <a href="/images/2014-08/Average_Days_New_and_Old_Apts.png">Click here to enlarge</a>.' %}


{% marginfigure 'cost-savings' 'images/2014-08/GB_Cost_Savings_TOU_Pricing.png' 'Cost savings in U.S. dollars on monthly electricity bill compared to BGE residential "R" plan. <a href="/images/2014-08/GB_Cost_Savings_TOU_Pricing.png">Click here to enlarge</a>.' %}Shown to the right is the same monthly savings analysis, this time for the <a href='{{ site.url }}/articles/BGE-Pricing'>Green Button sample data</a> for an inland single family residence.


The total annual savings for the sample set would be $27.23 for the "RL" plan compared to the regular "R" plan, and $60.25 for the "EV" plan.  These aren't large chunks, but I think that's probably by design.  BGE doesn't want to lose an excessive amount of revenue by having people switch over to dynamic pricing plans.  At the same time, providing some incentive to switch, especially for electric vehicle owners (mind you this would be a different analysis), makes for a more reliable grid during the peak hours of the summer months by shaving or shifting load.
