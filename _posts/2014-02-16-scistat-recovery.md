---
title: SciStat Crew Return Mission
layout: post
date: 2014-02-16 13:53

---

Objective
---------

This is the first time I'll be using the [Deadly Reentry
Continued][deadly-reentry-continued], so I'll need to make sure that my
recovery module is properly shielded. This mission is meant to recovery my crew
before installing the [TAC Lifesupport][tac-lifesupport] mod.

In this mission we'll return the current 2-man crew of SciStat to Kerbin. We'll
have to launch a vehicle to rendezvous with SciStat in Munar orbit. Once there,
we'll need to transfer the crew to the return vehicle. We'll have to return the
vehicle to Kerbin and survive aerobraking and re-entry.

1. Safely recover SciStat crew
2. Design and build an appropriate crew return vehicle
3. Survive re-entry

Crew Return Vehicle
-------------------

We'll need enough delta V to get to the Mun and back again. We'll plan on aero
breaking in Kerbin atmosphere on return.

* dV to Mun: ~1000m/s
* dV to Kerbin aerobrake: ~250m/s
* total required dV: ~1250m/s

![Crew Return Vehicle][crew-return-vehicle]{: .caption}

* Full Mass: 15840kg
* Dry Mass: 7840kg
* Engine: LV-909 50kN, 390s Isp, 0.32-0.65 TWR
* Delta-V: 2690m/s

Launch Vehicle
--------------

The launch vehicle needs to get the 15.8t crew return vehicle into orbit. It's
got an upper stage for orbital insertion:

![Launch vehicle upper stage][launch-vehicle-upper-stage]{: .caption}

6 x Septratrons in a retrograde configuration provide deorbit thrust for the
lower stage on decoupling. A pair of modular girder segments with a decoupler
between them connect the upper stage to the lower stages.

* Full Mass: 38778kg
* Dry Mass: 22778kg
* Engines: 2 x LV-T45 400kn, 370s Isp 1.07-1.85 TWR (combined)
* Delta-V: 1979m/s

The lower stages use an asparagus staging configuration:

![Launch vehicle lower stages][launch-vehicle-lower-stages]{: .caption}

Central stack:

* Full Mass: 81978kg
* Dry Mass: 44078t
* Engines: 4 x LV-T45 800kn, 320s atmosphere Isp 1.02-1.68 TWR (combined)
* Delta-V: 1575m/s (in atmosphere)

Asparagus stages, for each pair, excluding other stages and payload:

* Full Mass: 15200kg
* Dry Mass: 3200kg
* Engines: LV-T30 215kN, 320s atmosphere Isp 1.88-6.09 TWR (stage only)

Together these stages produce 1071m/s of delta-V in atmosphere.


All the lower stages together should provide at least 2646m/s of dV. Together
with the upper stage we should have 4577m/s. This is just enough to get into
low Kerbin orbit. The return vechicle has over 1000m/s more delta-V than
necessary for Munar intercept, orbital injection and return, so we should be
fine with this configuration.

Mission Notes: Launch and Munar Orbital Injection
-------------------------------------------------

On this mission we'll be taking just Johnming Kermin. Once he rendezvous with
SciStat in Munar orbit, Bill and Bob will transfer over for the return flight.

![All asparagus stages away, lower stage, central stack struggling to push us into orbit][lower-stage-in-flight]{: .caption}

The launch vehicle is clearly under powered. The central stack struggles to
push us into orbit. Despite having TWR above 1, we still lose velocity once
we've decoupled the asparagus stages.

![The upper stage of the launch vehicle is likewise underpowered][upper-stage-in-flight]{: .caption}

End up needing about 400m/s of delta-V from the return vehicle to achieve orbit.

* Mass after orbital insertion: 14260kg
* Delta-V remaining: 2288m/s

However, we still have plenty of delta-V left. In all we have a 1000m/s margin
of safety on the rest of the operations.

Once in orbit, we plot a maneuver node that brings us into very low Munar
orbit. This will set us up for an efficient rendezvous with SciStat.

![Our plotted course for the Mun][plotted-munar-intercept]{: .caption}

* 860m/s dV
* 50kN thrust
* 14260kg mass
* 3.5m/s^2 initial acceleration
* 245s burn (4min 6sec)

We'll initiate the burn at 2 min 3 sec to node. Toward the end of the burn
we'll probably have to pull back throttle as our acceleration will increase
during the burn as our mass decreases.

Burn goes mostly according to plan. We used slightly more delta-V than planned,
but we're on a course for Munar intercept with Pe of 20km (instead of 30km).
SciStat is at a 20x20km orbit, so we need to get in that close anyway.

* Mass after Munar intercept burn: 11320kg
* Delta-V remaining: 1406m/s

Once at the mun, we'll need to inject into an orbit (~270m/s) and do a plane
change to match SciStat and rendezvous.

Mission Notes: SciStat Rendezvous
---------------------------------

About 1.5 hours prior to Pe on Munar intercept, I've decided to combine Munar
orbital injection and SciStat rendezvous maneuvers. I didn't even know you
could do this, but you can plan out several maneuver nodes:

![4 Node Munar injection and SciStat rendezvous maneuvers][four-node-rendezvous]{: .caption}

The first maneuver will match planes with SciStat. The second will inject the
crew return vehicle into munar orbit. The final maneuver brings us within 1km
for SciStat Rendezvous. And finally I'll match velocities with SciStat.

* Plane change: 88m/s, 20s burn
* Munar orbital injection: 213m/s, 49s burn
* Rendezvous: 18m/s, 4s burn
* Match velocities: 71m/s, 16s burn
* Total: 389m/s, 88s in 4 burns

Once these maneuvers are complete I should have more than 1000m/s of dV left,
plenty for Kerbin return and nearly enough for a powered Kerbin orbital
insertion.

![Classic Hohmann transfer setup][classic-hohmann]{: .caption}

First burn went just fine. Minor adjustments to subsequent maneuver nodes to
readjust final rendezvous. The next node is the longest burn, almost a minute.

Unfortunately a fat finger really screwed stuff up. I ended up burning prograde
after the capture burn. This makes rendezvous **much** more difficult. I'm
quite upset about this.

I was trying to enable and disable various object display in the map view. It
turns out hitting control turns up throttle. Use right-click to enable multiple
objects with this control.

![Stupid control I thought would work better if I hit the control key][right-click-control]{: .caption}

The new plan calls for three more burns. Two bring my orbit in closer to
SciStat's. The final maneuver matches velocity.

* Bring in Pe: 14m/s, 3s burn
* Bring in Ap: 63m/s, 14s burn
* Match velocities: ~40m/s, ~10s burn (estimated)
* Total: 117m/s

With my bad burn I have 1073m/s of dV left. We'll see how much worse off I
really end up being. Fortunately I should still have plenty of dV left to get
back to Kerbin.

Mission Notes: SciStat Crew Return
----------------------------------

In this final segment of the mission I'll bring Bob, Bill and Johnming back to
Kerbin.

![Crew transfer to the return vehicle][crew-transfer]{: .caption}

The return vehicle has 199/244 units of fuel and oxidizer. This should be more
than enough to get back to Kerbin. I'll shoot for a maneuver that puts our Pe
around 30km. That's about 320m/s of delta-V from this low Munar orbit. I'll
transfer the rest of the fuel to SciStat for use in future missions.

* Delta-V: 320m/s + 130m/s safety buffer = 450m/s
* Current units of fuel/oxidizer: 199/244
* Minimum required units: 73/88
* Needed units of fuel/oxidizer: 100/122
* Transfer to SciStat: 99/122

I'll also top up the monopropellent in the return vehicle. It's always good to
have an extra supply and the return vehicle only carries 30 units. During the
rendezvous I used almost 20 units.

On the kerbin return burn burn I ended up with 37 units of fuel left. This is
more than my projected safety buffer, so I must have done something better than
planned :)

![Goodbye SciStat][goodbye-scistat]{: .caption}

At this point we're on our way back to Kerbin. Once we get there we'll enter
the atmosphere. This will be the first time I'll be experiencing Deadly
Reentry. We'll need to decouple the drive section (fuel tank, engine,
batteries, solar panels). We'll also need to shutdown the antennaes (which
aren't technically doing anything for me at this point)

![Reentry heat burns up drive section][reentry]{: .caption}

Reentry goes smoothly. The shielding on the capsule has plenty of ablative
shielding which does a great job of protecting the capsule and all attached
parts. Once we get back into the atmosphere, after reentry effects are complete
we have 154 out of 1000 units of ablative shielding left. It looks like we had
the right amount, not too little, but not too much either. I still don't know
all the details of how Deadly Reentry works, but it seems pretty straight
forward. However, I would not want to take a steeper aerobrake maneuver than
the one I did. It seems 30km was appropriate.



Takeaways
---------

* Right-click on the object visibility menu in map view **NOT CTRL or SHIFT**
* Having some tools to calculate delta-V under different situations, in
  addition to something like Kerbal Engineer is really helpful.
* Reenry is not as dangerous as expected, just make sure you're shielded.

[deadly-reentry-continued]: http://forum.kerbalspaceprogram.com/threads/54954-0-23-Deadly-Reentry-Continued-v4-3-1-11-14
[tac-lifesupport]: http://forum.kerbalspaceprogram.com/threads/40667-0-23-WIP-TAC-Life-Support-0-8-22Dec
[crew-return-vehicle]: {{site.baseurl}}/images/scistat-recovery/crew-return-vehicle.png
[launch-vehicle-upper-stage]: {{site.baseurl}}/images/scistat-recovery/launch-vehicle-upper-stage.png
[launch-vehicle-lower-stages]: {{site.baseurl}}/images/scistat-recovery/launch-vehicle-lower-stages.png
[lower-stage-in-flight]: {{site.baseurl}}/images/scistat-recovery/lower-stage-in-flight.png
[upper-stage-in-flight]: {{site.baseurl}}/images/scistat-recovery/upper-stage-in-flight.png
[plotted-munar-intercept]: {{site.baseurl}}/images/scistat-recovery/plotted-munar-intercept.png
[four-node-rendezvous]: {{site.baseurl}}/images/scistat-recovery/four-node-rendezvous.png
[classic-hohmann]: {{site.baseurl}}/images/scistat-recovery/classic-hohmann.png
[right-click-control]: {{site.baseurl}}/images/scistat-recovery/right-click-control.png
[crew-transfer]: {{site.baseurl}}/images/scistat-recovery/crew-transfer.png
[goodbye-scistat]: {{site.baseurl}}/images/scistat-recovery/goodbye-scistat.png
