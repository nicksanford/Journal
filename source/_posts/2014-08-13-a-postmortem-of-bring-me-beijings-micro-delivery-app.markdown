---
layout: post
title: "A postmortem of Bring Me: Beijing's micro-delivery app"
date: 2014-08-13 11:00:22 +0800
comments: true
categories: ["bringme", "bring me", "new app", "postmortem"]
keywords: "bringme, bring me, new app, postmortem"
description: "This post is coming about 6 months late but I thought I would catch
up and do a write up of my experience building a micro-delivery app (similar to
Seamless or GrubHub) for Beijing called BringMe with my friends Eric Kuhn
and Kenny Pirman in the Summer of 2014."
---
This post is coming about 6 months late but I thought I would catch
up and do a write up of my experience building a micro-delivery app (similar to
Seamless or GrubHub) for Beijing called [BringMe](http://bringme.launchrock.com/)
with my friends [Eric Kuhn](https://www.linkedin.com/profile/view?id=37760991)
and [Kenny Pirman](https://www.linkedin.com/profile/view?id=135530026) in the Summer
of 2014. We (mainly Eric and Kenny) noticed that there was no English-friendly
micro-delivery app in Beijing that allowed you to seamlessly order food / groceries
and wondered "how hard could it be to build". The answer was surprising.

We wanted the service to have a mobile app that allowed the user to hold an "order"
button and record themselves dictating their order. We chose an audio recording
as the ordering method because we felt that:

1. The purpose of the first iteration of the app was to explore what users wanted
delivered to them.  We didn't know if users mainly wanted restaurant food, groceries, or even corner-store 
goods like toothpaste, beer, and condoms.  We wanted to leave our ordering process
open-ended in the beginning and narrow our focus once we had some concrete data
on what users wanted.

2. "Walky-talky style" audio-texts are a commonly used method of communication
on [WeChat](http://www.wechat.com/en/) (China's main social media app, similar to WhatsApp) and therefore using
audio recordings to make orders would feel natural to users.

3. The "delivery drivers" would initially be Eric, Kenny, and myself so we could get on the
ground experience and have the best feel what people wanted from the service. Because
we were only three people and Beijing is a HUGE city we confined our delivery
coverage to our local neighborhood of Andingmen (about a square half-mile) and only took orders that
fit in a backpack so we could deliver by bike.

4. A major challenge in this project was that because our target market were English
speakers in Beijing that didn't speak Chinese, we needed a way to find the user's
location when the user probably doesn't know what their address is (again, because they
can't read or write Chinese).

We decided to build the app in Phonegap so we could launch on all mobile platforms
as soon as possible.  We also felt that the experimental nature of our project
meant that it was better to get a working (if rough and unsexy) prototype on the
market sooner, rather than developing two polished native apps on Android and iOS
and taking much longer to see if the idea was even worth entertaining.

It took the three of us about a week to complete BringMe's Phonegap app in  our
free-time, due to the fact that none of us had used Phonegap on a previous project.
Phonegap's geolocation API proved to be accurate within about 50 ft of the target's
actual location, which was more than adequate as long as we could call the user when we
reached their approximate location.

It took me about a day to build the backend, a simple Sinatra app that listened for a
JSON request containing the user's name, phonenumber, geolocation, and an audio
recording of their order. Once the request came in it was logged and an email was
sent to Kenny, Eric, and myself so we could deliver whatever they wanted and received
cash on delivery.  We also converted the longitude and latitude into a URL that
linked to a free third party reverse geolocation service.

Once BringMe launched we only got about 5 orders the first two weeks before people stopped
ordering altogether.  We found that what people actually wanted wasn't yet another
app to download but rather an integration with WeChat's platform that would allow them
to make orders from within the WeChat app itself.  This would probably have been
possible, given that Kenny and myself can read Chinese and could have probably
deciphered the WeChat API documentation.

Unfortunately, by that time our team had lost interest in the project. I was in
the process of moving back to the States while Kenny and myself were also starting
a new contract at [BEAM](http://xueyuanqiao.org) building their new donation platform.
Eric's other app [PartyInBeijing](https://play.google.com/store/apps/details?id=com.partyinbeijing.app)
was also gaining a lot of traction around time. The end result was that the three
of us didn't have time to continue developing BringMe.

The takeaway I got from this project is that quick prototypes are good for
validating market hypothesis without sinking a lot of time in a bad idea (duh). It turned
out that people wanted our service, but not our app.  If we would have sunk the
time into building two well polished native apps, only to find out what people actually
want is a service that integrates with WeChat's already existing platform, a lot of
man hours would have been wasted.  For this reason alone Phonegap was a good technology
for rapid prototyping our idea although I would never use it for a final production product.

Despite the fact that BringMe didn't catch on, it was a lot of fun building the entire
stack of a service with a small team of energetic friends and collaborators.
