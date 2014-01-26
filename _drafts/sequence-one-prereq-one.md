---
layout: post
title:  "Vestri 1 Launch Report"
date: 2013-08-25
categories: duna-precursor
tags: duna-sequence-one
---

Vestri 1 is the first of a pair of missions to launch AeroProbes to Minmus,
including a return to Kerbin. These two missions will provide proof of concept
for aero braking at Kerbin. We plan to experiment with different altitudes of
aero braking to determine a safe range for a Duna return Kerbin aero brake
manuver.

I'm proud to report that Vestri 1 has launched successfully.


Vestri 1 Launch Vehicle
-----------------------

The Vestri 1 launch vehicle consists of two stags, plus the AeroProbe payload.

![Vestri 1 on the launchpad][launchpad]
<span class="imgcaption">Vestri 1 on the launchpad</span>

###AeroProbe Mk. 1

The AeroProbe Mk. 1 is a simple, powered spacecraft meant to measure
atmospheric parameters. It's got enough delta-v to return from Minmus. It's not
designed to get there on its own; However, it should have plenty of delta-v for
any mid-course corrections on the way. All told, the AeroProbe Mk. 1 should
have over 1300 m/s of delta-v. Ultimately, the AeroProbe is meant to make a
landing on surface using a parachute.

* Mk 16 parachute
* Probodobodyne OKTO probe core
* Two OX-STAT photovoltaic panels
* Scientific instruments: accelerometer, barometer, gravimeter, thermometer
* Two ROUND-8 toroidal fuel tanks
* Rocomax 48-7S rocket engine

###Stage One

Stage one on Vestri 1 is the Minmus launch vehicle. It will provide the initial
burn for Minmus intercept, as well as other services during the initial launch.
Stage One should be able to provide at least 2800/3200 m/s of delta-v (atm/vac)
including the AeroProbe Mk. 1 payload.

* RC-001S Remote Guidance Unit probe core
* Inline reaction wheel
* FL-T800 fuel tank
* LV-30 fiquid fuel engine

###Stage Two

Stage two on Vestri 1 is the primary launch stage from Kerbin surface. While
carrying Stage One and the AeroProbe Mk. 1 payloads, it can achieve about
2000/2200 m/s of delta-v (atm/vac). Experiments show that this is plenty to get
into the gravity turn, well above 10km.

* Two FL-T800 fuel tanks
* LV-30 liquid fuel engine

Launch
------

The Launch went well. We Turned down throttle when we were at nearly 200m/s,
well above terminal velocity. We turned it down too much and ended up well
below terminal velocity before getting it just right. Next time we'll have to
remember to turn down throttle sooner.

![Stage Two launches Vestri I][launch]
_Vestri 1 launches from KSP, powered by its second stage_

Stage Two, powered by a single LV-30 engine got us through most, but not all of
our initial burn. The engineering team back at KSP had some concerns about the
lack of gimbaling on the LV-30 for this first stage. However, the reaction-
wheel at the top of stage two provided plenty of control. gimbal 

![Stage Two making a gravity turn][gravityturn]
_Vestri 1 initiates its gravity turn well before decoupling stage two_

Stage Two had a third of its fuel left by the time we started our gravity turn
around 10km. This was nearly enough to complete the gravity turn. Given that
our initial burn easily put Vestri 1's apoapsis at 100km, we could have started
the gravity turn sooner. One of the objectives of Vestri 1 is to determine
changes to the Vestri 1 launch vehicle for Vestri 2, with a much larger
payload. Between throttling down to terminal velocity at sea level and having
plenty of fuel well into the gravity turn, it seems that the
Vestri 1 first stage should be a fine first stage for Vestri 2.


Stage One ignited part way through the initial burn, toward the end of the
gravity turn. More than half of its fuel was left after the first burn, leaving
plenty of delta-v for a plane-change burn and to start the Minmus intercept
burn. Stage One and Stage Two design lists roughly 5200 m/s of delta-v. This is
220 m/s less than the roughly 5420 m/s needed for Minmus intercept.
Unfortunately after the plane-change/intercept burn we left no delta-v for a
deorbit burn. It seems like Vestri 1 Stage One will remain in an eccentric
Kerbin orbit for th foreseeable future.

![Stage One waiting for its second burn][stageone]

Although Stage One couldn't provide quite enough delta-v for Minmus intercept,
The AeroProbe Mk. 1 has plenty of delta-v to achieve a Minmus intercept with a
free-return trajector. This is, of course, the core objective of Vestri 1.

After decoupling from Stage One, a few minutes of worry went by while
electricity drained dangerously quickly. Fortunately the AeroProbe Mk. 1
includes a pair of solar panels, providing more than enough electricity.

![Kerbin free-return trajectory][solarpowered]

After decoupling from Stage One, the AeroProbe Mk. 1 initiated its final Minmus
intercept. That intercept burn was a little tricky. This probably means the
burn was executed too early, or, given later mid-course corrections, too late.
Subsequent radial mid-course corrections put Vestri 1 on an intercept course
with Minmus periapsis of about 1,000km, with Minmus escape and a free-return
with Kerbin Periapsis of roughly 25km.

![Kerbin free-return trajectory][freereturn]

These parameters should be appropriate to achieve mission objectives including
a Minmus intercept and flyby with intstrument measurements as well as a Kerbin
aerobrake manuver and ultimate Kerbin landing or splashdown.

Take Aways
----------

* Throttle down around terminal velocity, but not so far you lose terminal
  velocity
* With this much TWR, start gravity turn before 10km
* Remember to leave enough delta-v in spent stages for a deorbit
* Include batteries to avoid running out of power, especially if you plan to
  spend a significant amount of time in the shadow of a body
* More carefully plan intercept burns or be prepared for mid-course corrections

[launchpad]: {{site.baseurl}}/images/vestri-1/launch-pad.png "Vestri 1 on the launchpad"
[launch]: {{site.baseurl}}/images/vestri-1/launch.png "Stage Two launches Vestri 1 from KSP"
[gravityturn]: {{site.baseurl}}/images/vestri-1/gravity-turn.png "Vestri 1 starts its gravity turn"
[stageone]: {{site.baseurl}}/images/vestri-1/stage-1.png "Vestri 1, Stage One just after the initial launch"
[solarpowered]: {{site.baseurl}}/images/vestri-1/solar-powered.png "the AeroProbe Mk. 1 is solar powered, thank goodness"
[freereturn]: {{site.baseurl}}/images/vestri-1/free-return.png "Vestri 1 on a free-return trajectory"
