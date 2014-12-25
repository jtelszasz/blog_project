---
layout: post
title: Goalkeeper Performance Stats
description: "Introduction to the MCFC/Opta data and some initial stats for keepers."
modified: 2014-12-17
category: articles
tags: [soccer, mcfc-data, goalkeeper]
image:
  feature: texture-feature-05.jpg
  credit: Texture Lovers
  creditlink: http://texturelovers.com
--- 

Starting off by looking at some footy data.

In 2012, Manchester City FC and <a href="http://www.optasports.com" title="Opta">Opta</a> (a sports analytics company) teamed up to release a season's worth of granular data for the 2011-2012 season. Two datasets were released - one with 206 fields containing total game events by player, and another that included x-y locations for passes and shots for each player for the Bolton-Manchester City match on August 21, 2011. There are plenty of other blogs that have been doing football analytics and looking at this data, and I'm likely not to break any new ground. I thought it would be a fun dataset to look at.

Since I'm a goalkeeper, I became interested in measuring the performance of goalkeepers. Having surveyed a number of soccer analytics blogs, goalkeeping seems to be a lesser researched topic and is also potentially more difficult to analyze given the smaller number of events or actions a goalkeeper might take over the course of a game compared to field players. I shouldn't suggest here that I'll be breaking new ground or providing revolutionary keeper analysis - I'm no statistics whiz - just letting you on to my motivations.

To kick things off (ugh, I can't possibly get away with that), I've provided some quick and hopefully useful stat tables for the overall season numbers for goalkeepers. I'm only looking at goalkeepers who played 1080 minutes or more (12 games) so we have a reasonable sample size for each goalkeeper. I'll get to some potential visualizations later, but for now these stats are simple enough that ordered lists are a clear enough way to see some performance metrics. I'm actively choosing not to go the bar graph route; I think they're terrible for three or more variables.

This would also be a good time to mention the "P90" measures. Since not all players have played the same minutes, it makes sense to normalize their actions to their time played.  Instead of per minute (as in saves per minute or distributions per minute) I think it makes sense to do this on a per 90 minute basis.  Ted Knutson (among others) have done this over at <a href='http://www.statsbomb.com' title='Statsbomb'>Statsbomb</a> (which, if anything I'm talking about is interesting to you, you *have* to check out).

### Saves

<center>
<figure>
  <a href="{{ site.url }}/images/2014-03/Saves_Table.png"><img src="{{ site.url }}/images/2014-03/Saves_Table.png"></a>
  <figcaption>Goalkeeper saves tables, 2011-2012 season .</figcaption>
</figure>
<center>

The simplest way of measuring keeper performance is just to rate them on save percentage (number of shots saved out of number of conceded shots on target). The dataset is also kind enough to us in that they provide short range saves/shots conceded and long range saves/shots conceded. This starts to drill down a bit more into the qualities of the goalkeeper. This is especially true of short range.  For long range shots in the Premier League it should take a true screamer to beat a goalkeeper, so these numbers *should* all be at or near 100%, and are likely more reflective of the number of long-range blinders the team conceded than the keeper's performance.

From the looks of it, de Gea is a top shot-stopper. I'll discuss him a bit with regard to crosses as well.

Szczesny was apparently not very good for Arsenal this season. All three save percentages (all, long-range, and short-range) are near bottom. Granted, these numbers don't tell the whole story. Maybe Szczesny was seeing an abnormally high number of quality, well-placed shots at all ranges. A bit of foreshadowing here: we'll need to look at team defensive performance and shots data to get a better feel for this.

You also see the performance of Mignolet and Begovic starting to stand out. Both were with bottom half of the table teams and were likely facing many more decent chances than a Hart or a De Gea. Of course, Mignolet is now Liverpool's starter and Belgium's number two, and Begovic (despite a howler or two and a current injury) is highly touted.

### Distribution

<center>
<figure>
  <a href="{{ site.url }}/images/2014-03/Dist_Table.png"><img src="{{ site.url }}/images/2014-03/Dist_Table.png"></a>
  <figcaption>Goalkeeper distribution tables, 2011-2012 season.</figcaption>
</figure>
</center>

As in all of these top level stats, the distribution numbers are confounded as well. I think team tactics has a pretty big role to play here. For a possession team, a goalkeeper is going to be picking out short balls and throws and trying to keep his numbers up. Other more direct or counter-attacking sides will want a goalkeeper to quickly get long balls down the field or to the flanks, possibly with lesser rates of success.

I definitely want to do some more work on distribution. You won't get through a televised broadcast of a Premier League match without a former (field) player (probably Eric I-Need-Salsa-For-The-Big-Ass-Chip-On-My-God-Damn-Shoulder Wynalda or Robbie Mustoe) decrying the need for the *modern* goalkeeper to be comfortable on the ball - to assist a team in maintaining possession, meaning make simple passes to nearby defenders while under pressure. Besides just these distribution numbers (which are for distibution after a keeper catches), passing numbers should play a heavy role in determining the ability of a goalkeeper.


### Crosses

<center>
<figure>
  <a href="{{ site.url }}/images/2014-03/Cross_Table.png"><img src="{{ site.url }}/images/2014-03/Cross_Table.png"></a>
  <figcaption>Goalkeeper distribution tables, 2011-2012 season.</figcaption>
</figure>
</center>

De Gea and Reina quite clearly prefer punching or not challenging for the ball at all to catching. De Gea got quite a bit of flack in this, his first season in the Premier League. From a goalkeeper's prospective, I'd be flaky as all get out on crosses if I started in the Premier League at 23 (granted he was a product of the Atletico Madrid youth academy and was first choice for the first team for about a season and a half there). It's much easier to build confidence on shot-stopping (especially when you are as good and as agile as de Gea) but it's hard to duplicate high pressure, game-like cross scenarios in training.

What these numbers don't tell you is whether a punch was successful in clearing the ball out of danger or not. (For that we'd need to dig pretty deeply into X-Y coordinate data from another dataset.) Obviously if a keeper punches but the ball slips out to an opposing player for a shot, the keeper hasn't really effectively dealt with the cross.

All else being equal, I can't imagine Liverpool and Manchester United were allowing any more dangerous crosses into their box than any other team (which might lead to more punches from the keeper), so I think it's generally a bad thing that both of these keepers were preferring to punch so often. Of course it was De Gea's first season at United, and Reina is no longer with Liverpool, so I guess there you have it.

Anyways, hope some of these numbers are fun or useful to you. I'm definitely having fun digging into this dataset. 





