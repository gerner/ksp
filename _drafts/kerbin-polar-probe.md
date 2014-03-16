---
title: KeScan, Kerbin Polar Probe
layout: post
date: 2014-02-23
---

Mission Notes
-------------

###Design

Before anything else I'll design a hybrid SCANSat/Kethane probe: KeScan. I'll
launch this into a polar orbit around Kerbin. From this exercise I'm hopeing
to:

* Figure out how SCANSat works, how the parts interact, how this affects the
  science mechanic of KSP
* Figure out any issues between Kethane and SCANSat
* Put a probe into polar orbit
* Collect science

![KeScan I Probe][keyscan-I]{: .caption}

I'll be targeting a polar orbit for this mission. This should end up being
slightly more difficult than a standard LKO insertion since I won't have the
benefit of Kerbin's rotation starting me out. But the launch vehicle I'm using
(the same I used to launch the [KerbComm][kerbcomm] sattelites has about
8200m/s of dV. That's more than enough. So much that I have even thrown in a
probe core, solar panels, antennae and a couple of [KAS][kas] ports so I can
leave the orbital stage of the launch vehicle around in case someone in Kerbin
polar orbit might need some fuel later.

![KeScan I Launch Vehicle][keyscan-I-lv]{: .caption}

I won't include all the asparagus tage stats

Liftoff stages:

* Full mass with payload: 47294kg
* min stage range TWR: 3.21-1.61
* Delta-V: 4330m/s

Orbital stage:

* Full mass with payload: 6594kg
* Dry mass with payload: 2814kg
* LV-909 engine thrust/Isp: 50kN/390s
* min/max TWR: 0.77/1.8
* Delta-V: ~3800m/s

I anticipate leaving at least 1600m/s of dV in the orbital stage.

The layout of my communications network is equitorial, and low enough that I'll
quite likely be facing eclipse from the comms network at low orbits.
Fortunately, I can calculate the necessary parameters to avoid this:

$$
\theta = \cos^{-1}\bigg(\frac{r}{r+a}\bigg)
$$

Where r is the radius of the planet and a is the altitude of the sattelite.
I'll use the semimajor axis for my purposes.

$$
\theta = \cos^{-1}\bigg(\frac{600000m}{949123.5m}\bigg) = .89
$$

So that's about 50&deg; to the surface of kerbin. Of course, our polar
sattelite will be in orbit, well above surface level, at least at 75km.

$$
\theta = \cos^{-1}\bigg(\frac{600000m}{600000m+75000m}\bigg) = .48
$$

That's about 27&deg;. Add this to the 50 degrees from the comms sattelites and
we've got about 77&deg;. This isn't bad, but how about a 100x100km orbit?

$$
\theta = \cos^{-1}\bigg(\frac{600000m}{600000m+100000m}\bigg) = .54
$$

That's about 31&deg;. With this we're at about 81&deg; That means we'll spend
about 10% of the orbit (10% of the time for a circular orbit) in eclipse. We
can invert the function to calculate the orbit we'd need to never be eclipsed:

$$
\frac{r}{\cos(\theta)} - r = a
$$

$$
\theta = \pi/2-.89 = .68
$$

$$
\frac{600000m}{\cos(.68)} - 600000m = a = 183244m
$$

So I'd need an orbit of about 183km to avoid eclipse.

Another important consideration is the distance between the comms network and
my new sattelite. Kerbin elcipse is irrelevant if my antennae can't reach the
network.

The maximal distance before eclipse will happen just at eclipse. And that 
distance is given by:

$$
d = x_{2}+x_{1}
$$

Where x2 and x1 are the respective distances along a surface tangent to the
surface for each stattelite. Using the pythagorean theorem we can compute this
distance for our two orbiting sattelites.

$$
d = \sqrt{r^2 + (r+a_{1})^2} + \sqrt{r^2 + (r+a_{2})^2}
$$

at our optimal 183km orbit:

$$
d = \sqrt{(600000m)^2 + (949123.5m)^2} + \sqrt{(600000m)^2 + (600000m+183244m)^2} = 2109516m
$$

That's over 2 million meters, beyond the range of the basic unidirectional
RemoteTech antennae. Could we reach even the 75km orbit?

$$
d = \sqrt{(600000m)^2 + (949123.5m)^2} + \sqrt{(600000m)^2 + (600000m+75000m)^2} = 2025989m
$$

Even this much smaller orbit is far outside of range. Fortunately, the
communotron antennae has a range of 2.5 million meters which will be plenty.

###Launch

Given my calculations, I'll be targeting a 190km by 190km polar orbit. My
launch vehicle has way more thrust than necessary, so I can burn at a low
throttle until the later stages. Instead of aiming for 90&deg; for my gravity
turn, I'll be aiming for just west of north. I won't aim directly north because
I'll start out with east-ward velocity from Kerbin's rotation that I'll need to
kill in order to get a polar orbit. I'll have to remember to switch to orbital
mode when I make my gravity turn.

I start the launch at full throttle, but I quickly end up at about 60%
throttle. This might be a good rule of thumb: TWR of about 2 is plenty for a
solid launch to terminal velocity.

After dropping the first stage, I throttle up to just about 66%. At this point
I'm at 3500m, 125m/s straight up, with terminal velocity at about 143m/s.

I make it to 8000m shortly before dropping my next stage. At this point I
switch to orbital mode on the navball and pitch down toward just west of north.

Pitching down is very tricky in this vehicle. I've only got 1 LV-45 and very
little reaction wheels. I drop my second stage and head to about 70&deg;, just
west of north. I also push to full throttle at 322m/s. I'm at 13000m, terminal
velocity is at 365m/s and climbing fast.

At 20000m, My Ap is at 35km, and I've got 617m/s of orbital velocity. Stuff is
happening very fast now. I've got more than a 3rd of my last asparagus stage
left. I need to keep pushing my Ap _out_ rather than _up_ at this point. And I
need to be careful not to lose connection to the comms network.


At 31000m (just seconds since 20000m) I've dropped my last asparagus stage. I'm
pointed at 10&deg; just west of north with my orbital velocity at 30&deg just
east of north. Ap is at 49km and my LoS to KSC and the comms network is looking
great. However, the communotron is under my orbital stage ferrings. I'll need
to make sure to extend that and get my Ap up to 190km before losing LoS or
getting outside 500km of KSC or the comms network. I wonder now if I should not
be pushing _out_ so much as _up_ after all.

![Dropping my final launch stage][final-launch-stage]{: .caption}

At 61km, after several seconds of full throttle toward about 5&deg; I drop my
final launch stage. Orbital velocity is at 10&deg; due north. Ap is at 109km
and climbing. Pe is still below Kerbin surface.

At 77km I get my Ap to 190km, about 10&deg; on the far side of the north pole
from me. I extend the communotron and wait for Ap where I'll make my
circularization burn. Quite likely I'll go into eclipse between now and then.
But I anticipate having full control in time for my burn.

![KSC in eclipse, LoS to comms network][ksc-eclipse]{: .caption}

I almost lose connectivity, but just as one of my comms sattelites goes into
eclipse, another comes out. I'm in great shape for my circularization burn,
with about a minute to spare.

* 5980kg
* LV-909 50kN thrust
* 8.3m/s^2 initial acceleration
* 167m/s burn
* ~20sec burn

I end up just overshooting my burn. I get a 190km by 192km, nearly circular
orbit. Launch and orbital insertion maneuvers completed, successfully.

###KeScan Probe Deployment

![Undocking KeScan probe][kescan-undocking]{: .caption}

With orbital insertion complete, it's time to decouple the probe from the
launch vehicle orbital stage. The orbital stage I'll keep in a lower (120kmm by
120km) polar orbit for future uses.

Launcher Orbital Stage stats:

* 4630kg
* 295/360 of 360/440 units of fuel/oxidizer

The KeScan probe can begin scanning.

![KeScan active][kescan-active]{: .caption}


[keyscan-I]:
[kerbcomm]:
[kas]: 
[keyscan-I-lv]:
[final-launch-stage]:
[ksc-eclipse]:
[kescan-undocking]:
[kescan-active]:

