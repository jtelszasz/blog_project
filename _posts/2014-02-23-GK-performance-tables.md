---
layout: post
title: Goalkeeper Analytics and Tables
description: "Introduction to the goalkeeper data and some initial numbers."
modified: 2014-02-25
category: articles
tags: [soccer, mcfc-data, goalkeepers]
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

In 2012, Manchester City FC and <a href="http://www.optasports.com" title="Opta">Opta</a> (a sports analytics company) teamed up to release a season's worth of granular data for the 2011-2012 season. Two datasets were released - one with 206 fields containing total game events by player, and another that included x-y locations for passes and shots for each player over the course of the entire season. There are plenty of other blogs that have been doing football analytics and looking at this data, and I'm likely not to break any new ground. I thought it would be a fun dataset with which to gain some new skills.

Since I'm a goalkeeper, I became interested in measuring the performance of goalkeepers. Having surveyed a number of soccer analytics blogs, goalkeeping seems to be a lesser researched topic and is also potentially more difficult to analyze given the smaller number of events or actions a goalkeeper might take over the course of a game compared to field players.

To kick things off (ugh, I can't possibly get away with that), I've provided some quick and hopefully useful stat tables for the overall season numbers for goalkeepers. I'm only looking at goalkeepers who played 1080 minutes or more (12 games) so we have a reasonable sample size for each goalkeeper. I'll get to some potential visualizations later, but for now these stats are simple enough that ordered lists are a clear enough way to see some performance metrics. I'm actively choosing not to go the bar graph route; I think they're terrible for three or more variables.

This would also be a good time to mention the "P90" measures. Since not all players have played the same minutes, it makes sense to normalize their actions to their time played.  Instead of per minute (as in saves per minute or distributions per minute) I think it makes sense to do this on a per 90 minute basis.  Ted Knutson (among others) have done this over at <a href='http://www.statsbomb.com' title='Statsbomb'>Statsbomb<a> (which, if anything I'm talking about is interesting to you, you *have* to check out).

## Saves

<figure>
  <img src="/images/Saves_Table.png">
  <figcaption>Goalkeeper saves tables, 2011-2012 season .</figcaption>
</figure>

The simplest way of measuring keeper performance is just to rate them on save percentage (number of shots saved out of number of conceded shots on target). The dataset is also kind enough to us in that they provide short range saves/shots conceded and long range saves/shots conceded. This starts to drill down a bit more into the qualities of the goalkeeper. This is especially true of short range.  For long range shots in the Premier League it should take a true screamer to beat a goalkeeper, so these numbers *should* all be at or near 100%, and are likely more reflective of the number of long-range blinders the team conceded than the keeper's performance.

From the looks of it, de Gea is a top shot-stopper. I'll discuss him a bit with regard to crosses as well.

Szczesny was apparently not very good for Arsenal this season. All three save percentages (all, long-range, and short-range) are near bottom. Granted, these numbers don't tell the whole story. Maybe Szczesny was seeing an abnormally high number of quality, well-placed shots at all ranges. A bit of foreshadowing here: we'll need to look at team defensive performance and shots data to get a better feel for this.

You also see the performance of Mignolet and Begovic starting to stand out. Both were with bottom half of the table teams and were likely facing many more decent chances than a Hart or a De Gea. Of course, Mignolet is now Liverpool's starter and Belgium's number two, and Begovic (despite a howler or two and a current injury) is highly touted.

## Crosses

This isn't anything we didn't already know. I'll add my two cents on de Gea - he got quite a bit of flack in this, his first season in the Premier League. We'll take a look at his cross numbers below, but from a goalkeeper's prospective, I'd be flaky as all get out on crosses if I started in the Premier League at 23. It's much easier to build confidence on shot-stopping (especially when you are as good and as agile as de Gea) but it's hard to duplicate high pressure, game-like cross scenarios in training.


## Distribution

<figure>
  <img src="/images/Dist_Table.png">
  <figcaption>Goalkeeper distribution tables, 2011-2012 season.</figcaption>
</figure>


