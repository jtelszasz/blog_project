---
layout: post
title: Mo Apartment, Mo Problems
description: "Average daily consumption for the new and old apartments."
modified: 2014-08-01
category: articles
tags: [energy, electricity, buildings]
---

Here's a quick comparison of average weekdays and weekends in the new and old apartments.<!--more-->

It would appear that we've been using more at the new place, but take a look at the daily totals. 

{% maincolumn 'images/2014-08/Average_Days_New_and_Old_Apts.png' 'Average hourly electric usage for new and old apartments, March and June.' %}


Of course we don't have apples-to-apples comparisons here.  Of course this is partly due to weather.  The old apartment is shown for March, where we left the thermostat on all day at 65 degrees F so Willow The Cat wouldn't freeze to death.  At the new apartment, we're shutting off the thermostat entirely during the day, and at night kicking it on to 75 degrees F.  So for weekdays, we're consuming much less during the day but evenings are much higher.  

However, the <a href="{{ site.url }}/articles/Guess-What-Time-Justin-Wakes-Up">6am peak when we wake up</a> is also much higher.  I'm sure that this is due to our own dedicated electric water heater at the new place.  Our two showers in the morning plus lighting loads are the 6am peak, while the evening hours are the A/C and any dishwashing we're doing after dinner.

To do these average day plots I set up a quick function that uses groupby, that way I can reuse this for any time period.

``` python
# Define a function to calculate average weekday and weekend

def avg_day(df,start_date,end_date):
    # df is pandas df, has 'USAGE' and 'tempF' fields, indexed by pandas datetime
    # date_range is string for .ix call
    # returns average_weekend and average_weekday
    
    df_dates = df.ix[start_date:end_date]
    
    # First groupby weekday/weekend and hour of day
    weekday_weekend_hour = df_dates.groupby([(df_dates.index.dayofweek==5)|(df_dates.index.dayofweek==6),df_dates.index.hour])

    # Calculate an average weekday and average weekend by hour (electricity and outdoor temp)
    average_day = pd.DataFrame([weekday_weekend_hour['USAGE'].mean(),weekday_weekend_hour['tempF'].mean()])
    
    average_weekend = average_day[True]
    average_weekday = average_day[False]

    return average_weekday, average_weekend
```





