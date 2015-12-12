---
layout: post
title: Summer Updates
description: "Summer delays and using an IDE."
modified: 2014-09-22
category: articles
share: true
tags: [python, code]
---

It's been a bit.  Work got busy, I got stalled and needed an IDE, and I developed a new model.  I didn't have much time over the summer for this stuff.  My real job got pretty busy.  You don't care about that though.  <!--more-->

I did get a bit stalled.  As I've discussed previously, I've used iPython notebooks <a href='{{ site.url }}/the-work'>quite a bit</a> for conducting analyses.  These only got me so far.  I've been working on a demand-side storage model to figure out how to take advantage of time-of-use pricing now available from utility companies.  While the notebooks work great for documenting analyses and creating plots, building a model is nearly impossible with them.  They aren't really useful if you need multiple functions and scripts.  I was encountering bugs early on in building the model and couldn't fix them.  It was frustrating.

This type of scientific computing really calls for an integrated development environment, or IDE.  It's the one thing I've been missing since starting in with Python in lieu of Matlab.  An IDE gives you an interactive console, debugging capabilities, and an editor all in one program.  After reading a bit online, it seemed the two big ones for Python were <a href='http://www.eclipse.org'>Eclipse</a> and <a href='http://www.jetbrains.com/pycharm'>Pycharm</a>.  I started with Eclipse.  I couldn't for the life of me get it working, something about the external libraries I was using wasn't getting set up right.  I tried every way imaginable, but this was as frustrating as the original bugs in my code.  I switched to Pycharm, and pretty quickly was up and running.

Long story short, with an IDE in hand I found my bugs pretty quickly and finished building the model over a weekend.  I definitely recommend Pycharm or another IDE (even trying Eclipse, if you can get it working) for anything more complicated than simple models or exploratory data analysis.  You could even write all your functions and scripts for a model in an IDE and then switch to notebooks for analysis and results of the model.

