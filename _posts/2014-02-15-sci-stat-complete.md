---
title: "SciStat: Completing the Program"
layout: post
date: 2014-02-15 10:08

---

Objective
---------
In this final mission in the initial SciStat program we'll achieve our primary
objectives for the program: conduct science missions at the Mun and return
results to Kerbin.

1. Lower SciStat orbit using monoprop and then deorbit the resupply vehicle
2. Conduct and measure delta-V spent on Tavert's [horizontal trajectory landing
   maneuvers][tavert-horizontal-trajectory]
3. Collect science from at least three more Munar landings, each a unique sites
4. Return science to Kerbin in the SciStat return vehicle

Mission Notes: Lowering Orbit
-----------------------------

Our first objective is to bring the orbit of SciStat much closer to the surface
of the Mun. This should make repeated Munar landings and re-launch require less
dV overall.

* Initial orbit: 50km by 50km
* Initial orbital speed: 510m/s
* Target orbit: 20km x 20km
* Target orbital speed: 544m/s
* Required dV: 34m/s

The resupply vehicle has approximately 40 units of monoprop (after refuelling
SciStat monoprop completely). Under this plan, we use the 40 units of excess
monoprop left in the resupply vehicle. Once that is consumed, we undock and
deorbit the resupply vehicle and continue orbital maneuvers without it.

For this set of maneuvers (at least one to lower Ap, one to circularize) we'll
only be using RCS thrusters. Maximum dV from excess monoprop is:

* initial mass: 30330kg
* 40 units of excess monoprop
* Stratus-V Monoprop Tank full/dry mass: 235kg/75kg
* Stratus-V Monoprop capacity: 40 units
* implied mass per unit of monoprop: 4kg/unit
* implied mass of excess monoprop: 160kg
* "dry" mass: 30170
* RCS Isp: 260s
* implied dV:

$$
\Delta{v} = ln\left(\frac{30330kg }{ 30170kg }\right) \cdot 260s \cdot 9.81 \frac{m}{s^2} = 13.5 \frac{m}{s^2}
$$

This is short by 20.5m/s. At this point we undock the resupply vehicle and its
4130kg of mass and continue maneuvers:

* new mass: 26040kg
* required dV: 20.5m/s
* resulting final mass: (using the inverted rocket equation derived in the [SciStat resupply post][sci-stat-resupply]

$$
M_{end} = \displaystyle \frac{ 26040kg }{e^{\bigg(\displaystyle \frac{ 20.5 \frac{m}{s} }{ 260s \cdot 9.81 \frac{m}{s^2}}\bigg)}} = 25832kg
$$

* 208kg of monoprop spent or 52 units

After an initial RCS "burn" of around 18m/s of dV, we have successfully undocked and initiated the resupply vehicle deorbit burn. 23 units of SciStat monoprop have been spent so far.

![Resupply Vehicle deorbit burn][resupply-deorbit-burn]{: .caption}

A second maneuver is planned for 17m/s of dV to circularize our orbit. Expected
monoprop spend is around 40 units. Final orbit achieved with an additional 44
units of monoprop spent. Overall spent 67 units of SciStat monoprop. This is
slightly more than the 52 units projected. Some of that was spent on providing
the resupply vehicle about 10 units for maneuvering away from SciStat before
the deorbit burn. This was much more than was necessary, but a small price to
pay for a safety buffer.

![A close orbit over the Mun][scistat-close-orbit]{: .caption}

Mission Notes: Landing
----------------------

The key goal in this phase of the mission is to conduct a highly efficient
landing on the Mun. Current orbital speed is 544m/s. According to
[Tavert][tavert-horizontal-trajectory] of the KSP fora, a horizontal trajectory
landing should result in a highly fuel-efficient landing.

The current orbit will fly nearly under the northwest crater, requiring only a
small inclination change. We'll shoot to bring our Pe just over it, high enough
to clear the crater walls. The plan is to use thrust mostly to kill horizontal
velocity. [From the fora][mun-topography] that the crater walls are around
2000m while the crater itself is around 1000m. We'll shoot for a Pe of around
2500m.

![SciStat lander flying at 550m/s, 5km above the Munar surface][lander-low-over-mun]{: .caption}

### 8 minutes to Pe

* 8km above Munar "sea" level
* 5km above Munar surface
* 550m/s surface velocity
* -23m/s vertical velocity

### 6 minutes to Pe

* 7km above Munar "sea" level
* 3.6km above sufrace
* 560m/s surface velocity
* -22m/s vertical velocity

Anticipating needing to kill at least 560m/s of dV.

* Lander is 3020kg
* Rockomax 48-7S produces 30kN of thrust
* nearly 10m/s^2 acceleration
* ~56sec burn to kill horizontal velocity

### 4 minutes to Pe

Warp no longer available

* 4.8km above "sea" level
* 1.4km above surface
* 566m/s surface velocity
* -17m/s vertical velocity

I'm anticipating some increase in surface altitude around crater walls. This is
where things get exciting.

### 3 minutes to Pe

* 3.5km ASL
* 823m above surface
* 570m/s surface velocity
* -10m/s vertical velocity

The lander's projected trajectory appears to intersect surface (A.K.A. crash!).
So we make a correcting burn, nearly prograde, but slightly away from surface
as well. New Pe is 2.8km. Fuel is at 109/133. Nearly the entire fuel supply is
available.

For the record. This flight ended in a crash at the lip of the crater. I
sheepishly have loaded the quicksave, and retraced my steps with a larger
margin of error on my Pe (setting my Pe to 4km instead of 2.8km).

### 2 minutes to Pe

After reloading and retracing my steps (as described above):

* 4.4km ASL
* 1575m above surface
* 566m/s surface velocity
* -7m/s vertical velocity

Under ideal circumstances, we'll only need to kill the vertical velocity, plus
the extra vertical velocity we pick up falling roughly 2km to the surface. That
should be about 580m/s plus whatever our vertical velocity will be after
falling 1000m.

Position is given by:

$$
x = \frac{1}{2}at^2
$$

Solving for t:

$$
t = \sqrt{\frac{2}{g} \cdot x}
$$

$$
t = \sqrt{\frac{2}{1.63m/s^2} \cdot 2000m} = 49s
$$

final velocity should be:

$$
v = 49s \cdot 1.63 \frac{m}{s^2} = 80\frac{m}{s}
$$

So I'll need at minimum 660m/s of dV for the final landing maneuver. Plugging
that back into our inverted rocket equation gives us:

$$
M_{end} = \displaystyle \frac{ 3020kg }{e^{\bigg(\displaystyle \frac{ 660 \frac{m}{s} }{ 350s \cdot 9.81 \frac{m}{s^2}}\bigg)}} = 2491kg
$$

So we'll spend 529kg of fuel on the landing, which translates to about 44units
of liquid fuel. Our optimal landing at this point should leave us with 66 units
of fuel (and the corresponding oxidizer). Of course, it'll take us about a
minute to kill our horizontal velocity and about 5 seconds to kill the vertical
velocity. During that time we'll be facing gravity losses.

### 90 seconds to Pe

I begin the landing burn at this point.

Unfortunately, the landing was extremely rough. The lander sustained no damage,
but there were multiple touch down events and many burns. Ultimately we ended
up with 52 units of liquid fuel. I think the main issue I ran into was landing
near the wall of the crater.

Mission Notes: Return to SciStat
--------------------------------

Again, we're going to try and take use of a horizontal trajectory, but this
time for launch into orbit. I'm going to try and launch into a rendezvous with
SciStat planet-opposite my launch site. That is, I'm shooting to get my
apoapsis to 20km by burning prograde from launch. Of course, I'll have to gain
some altitude to make it over the lip of the crater (opposite the
[crash](#minutes-to-pe-3) described above) and any other topographical
features.

* Initial orbital velocity 9.1m/s
* Target orbital velocity 556m/s
* idealized dV 546m/s
* Initial mass 2390kg
* Thrust 30kN, acceleration 12.5m/s^2
* idealized burn ~44s
* total dV available 949m/s

Using [Kosmo-not's Interplanetary How-To Guide][kosmo-not-guide] we can
calculate the correct phase angle as if this were an interplanetary transfer.
I'm not sure if this will work out, but it seems like a reasonable place to
start:

Time for the orbital transfer (from surface to an intercept with the 20x20km
orbit):

$$
t_{H} = \pi \sqrt{ \frac { \left( r_{1} + r_{2} \right) ^3 } { 8\mu } }
$$

$$
t_{H} = \pi \sqrt{ \frac { \left( 201672m + 220000m \right) ^3 } { 8 \cdot 65136835902.624 \frac{m^3}{s^2}} } = 1192s
$$

So 1192s to reach the intercept. That makes sense since the orbital period for
a 20km x 20km orbit is 2540s.

Degrees traveled by SciStat during that time is given by:

$$
\theta_{H} = \sqrt{ \frac { \mu } { r_{2} } } \cdot \frac { t_{H} } { r_{2} } * \frac { 180 } { \pi }
$$

$$
\theta_{H} = \sqrt{ \frac { 65136835902.624 \frac{m^3}{s^2} } { 220000m } } \cdot \frac { 1192s } { 220000m } * \frac { 180\unicode{176}\rm } { \pi } = 169\unicode{176}
$$

We could also have derived this from the orbital period of SciStat which gives
us an equivalent result.

Our desired launch phase angle is 180&deg; - 169&deg; = 11&deg; so we'll shoot
for a burn just before then (for a margin of safety). We'll launch into a
26&deg; inclined orbit to match SciStat.  This should be 64&deg from north,
approximately half-way between 45 and 90 on the navball.  Since I want to try
for a horizontal trajectory, I'll aim just over the horizon. I do need to clear
the terrain, especially the far lip of the crater.  So I'm going to try and get
to about 4km by the time I'm at the far side of the crater. Once I've done
that, I'll try for [apoapsis sailing][apoapsis-sailing] described in the fora.

Some important targets for my launch:

* 339&deg; phase angle with SciStat (360&deg; - 11&deg; - safety)
* 64&deg; on navball (~half-way between 45 and 90), just above horizon
* 4km altitude by far end of crater
* "apoapsis sail" after that

I ended up botching the execution. Two things happened I think: I was too eager
to get my 4km altitude (I ended up getting 14km by the far edge of the crater),
and I burned too fast in general.

On the rendezvous, I left lights, radios and SAS on and burned all my
ElectricCharge.

On final docking, I ended up with about 1 unit of liquid fuel left. This
landing and return appears to have had the same fuel efficiency as the last.
But any Jeb survived (after reloading) and collected more science, so I am
willing to call it a success none-the-less.

Mission Notes: Remaining Landings
---------------------------------

I'm looking for at least two more landings before sending the return vehicle
back to Kerbin with the collected Science. For the first of these landings I'm
going to shoot for the Munar highlands just south of the east far-side crater.
The altitude is 2500 or 3000m. I'll shoot to put my Pe at about 4km and try for
a horizontal landing trajectory (again). This will be somewhat tricky because
I'll be coming just out eclipse at the time I need to engage in the trickiest
landing maneuvers.

![Maneuver Node Planner says altitude is way over 3km][highlands-altitude]{: .caption}

The maneuver node planner suggests I'll need to come in substantially higher
than 4km, so I'm adjusting my plan to about 5km Pe. Hopefully that'll bring me
in at a safe altitude.

* 5100m target Pe
* 553m/s target orbital speed
* 9.6m/s dV initial burn
* 553m/s dV to kill horizontal velocity
* ~55 seconds to kill horizontal velocity at full throttle

### 12 minutes to Pe

* 15km ASL
* 10km above surface.

I turned off SAS to conserve power. 49 of 50 total units of ElectricCharge
avaiable. Everything is according to plan so far.

### 5 minutes to Pe

* 7500m ASL
* 5000m above surface
* 558m/s surface velocity
* -15m/s vertical velocity

I'm Still in eclipse. But I still have 98% of my EC available.

### 3 minutes to Pe

* 6000m ASL
* 3200m above surface
* 562m/s surface velocity
* -9m/s vertical velocity

Everything is according to plan. I'll begin my burn in another 90 seconds.

# 80 seconds to Pe

* 5400m ASL
* 2000m above surface
* 564m/s surface velocity
* -4.2m/s vertical velocity

The sun has just risen. I'm beginning the burn. I'm a little bit later than
planned (90 seconds to Pe planned), but I planned some safety budget for
exactly this reason.

Unfortunately I killed my horizontal velocity much too quickly. To make it to the highlands, I'm going to have to gain some more horizontal velocity.

* 6700m ASL
* 2000m above surface
* 25 seconds to touchdown
* 57/70 units of fuel left

### Touchdown

* 5290m ASL
* 41/50 units of fuel left
* 856m/s dV

### Return to SciStat

I'll execute the same plan as before, taking into account lessons learned
(slower, more methodoical execution of the plan). This time we'll be launching
from a much higher altitude so we should not have to worry too much about
gaining altitude too quickly.

![Much better launch!][good-return-trajectory]{: .caption}

This time around I've done a much better job! I still ended up overshooting my
Ap, but not by much (31km instead of 20km). I don't feel a need to correct with
a retrograde burn this time. Instead, I'll get a very close approach when I do
a plane change correction. I still only have 9/11 units of fuel. But that
should be enough. My plane change will take about 40m/s of dV. I should have
176m/s of dV total left. I'll probably use some of what's left to match
velocity with SciStat (looks like about 43m/s more to match velocity). In fact,
after getting a closest appraoch of about 2km and matching velocity, I still
have 90m/s of dV left. In all, this was a much better launch to return to
SciStat!

I'm looking forward to my next landing mission to further apply what I've
learned: be slow and methodical. The Lander has plenty of thrust!


Mission Notes: Return to Kerbin
-------------------------------

Although I was planning on conducting another landing on the Mun, it looks like
I don't have another shot at a new landing site for some time. I've got plenty
of fuel for several more landings (which suggests this SciStat station is a
great support system for planetary landings). But without another good landing
window coming up, I'm going to cash in on the science I've collected so far.

My plan is to take the return vehicle back to Kerbin. I'll load any remaining
science into the return vehicle (it looks like I missed one Munar EVA surface
sample), and then board Jeb. One burn Mun-orbit retrograde burn should put me
inside Kerbin atmosphere at which point we'll aerobrake and land back on Kerbin
under the return vehicle's parachute.

We'll burn prograde in our Munar orbit, Kerbin-side, roughly 25 or 30&deg;
before directly Kerbin-side.

* 245m/s dV return to Kerbin burn
* 3x LV-1R engines producing 4.5kN thrust
* 2030kg mass of return vehicle
* 2.2m/s^2 acceleration at full mass
* ~110 second burn
* 755m/s total dV available in return vehicle

This should be easy and low risk, even though I'm starting my burn a little
late. In addition, the return vehicle carries 60 units of monoprop and is
equipped with 3x RV-105 RCS thruster blocks producing 3kN. That's almost as
much RCS thrust as liquid rocket thrust! I'm expecting to have perhaps half the
return vehicle's fuel remaining.

Post-burn:

* 1850kg mass
* 30/36 units of fuel left
* 52 units of monoprop left
* Kerbin Pe 18km in 9 hours
* 1.5 hours to Mun escape

After recovering the return vehicle and its 13 experiments, I was able to
collect 1133 science! And I've got Jeb back on the KSC campus.

Takeaways
---------

* Horizontal trajectory landing is a lot different than a suicide burn. **be
  willing to build in plenty of margin for safety**.
* Even horizontal trajectory **landing will end up landing closer than the
  initially projected Pe**.
* Target landings well away from crater walls, **they are very steep and hard to
  land on**.
* For launch **take a slow and methodical approach**. The **lander has an awful
  lot of TWR after landing**
* Conserve power on the lander prior to rendezvous while in eclipse.
  **Deactivate lights, antennea and SAS**
* **I need a better source of altitude measurements**


[tavert-horizontal-trajectory]: http://forum.kerbalspaceprogram.com/threads/39812-Landing-and-Takeoff-Delta-V-vs-TWR-and-specific-impulse
[sci-stat-resupply]: {{site.baseurl}}{% post_url 2014-02-02-scistat-resupply %}
[resupply-deorbit-burn]: {{site.baseurl}}/images/scistat-complete/resupply-deorbit-trajectory.png
[scistat-close-orbit]: {{site.baseurl}}/images/scistat-complete/scistat-close-orbit-kerbinrise.png
[mun-topography]: http://forum.kerbalspaceprogram.com/threads/8756-I-just-mapped-the-Mun-in-3D-topography-style%21?p=148215&viewfull=1#post148215
[kosmo-not-guide]: http://forum.kerbalspaceprogram.com/threads/16511-Tutorial-Interplanetary-How-To-Guide
[apoapsis-sailing]: http://forum.kerbalspaceprogram.com/threads/68473-Fuel-loses-because-of-fighting-gravity-during-ascent?p=950287&viewfull=1#post950287
[lander-low-over-mun]: {{site.baseurl}}/images/scistat-complete/lander-low-over-mun.png
[highlands-altitude]: {{site.baseurl}}/images/scistat-complete/highlands-altitude.png
[good-return-trajectory]: {{site.baseurl}}/images/scistat-complete/good-return-trajectory.png
