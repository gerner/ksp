---
title: scistat-resupply
layout: post
date: 2014-02-02 21:46

---

Objectives
----------

Having put SciStat successfully into Munar orbit and launched and returned a
scientific landing, it's time to send our first resupply mission.

In this mission we send the SciStat resupply vehicle and evaluate its design
for a Munar intercept and resupply. Key objectives include:

* Launch the resupply vehicle into Munar orbit
* Resupply SciStat with nearly a full [Rockomax X200-16 fuel tank][x200-16-fuel-tank]
* Bring a new docking adapter to SciStat
* Collect and analyze data to evaluate performance of the SciStat resupply vehicle

Munar Intercept Burn
--------------------

* 854m/s in initial Munar intercept burn
* 159m/s dV left in launch stage
* implies 695m/s up to resupply vehicle
* Rockomax 48-7s 30 kN of thrust in resupply vehicle
* at least 15405kg in resupply vehicle mass
* implies ~2 m/s^2 acceleration
* implies 347s burn

713m/s dV remaining after launch stage exhausted
396sec burn estimated at burn-time

203m/s dV remaining

* 14.67 tons
* 140/171 units of fuel in drive tank, leaving resupply tank completely full
* node +136sec
* estimate 97sec remain in burn

It looks like we started the burn about 37sec late. This could end up in
disaster. I hope the smaller sized engine turns out to be worth it.

Complete burn, Munar Pe 48km

* 13.68 tons, 52/64 units of fuel left in drive tank. Resupply completely full.
* &gt;80% of drive tank used for intercept, roughly 860m/s dV.
* stable orbit around mun needs ~210m/s dV

![Munar intercept and planned capture][munar-intercept]{: .caption}

Remaining fuel should be enough
Resupply tank provides buffer
Results of this flight provide feedback for resupply vehicle design.

* 52/64 units of fuel left
* FL-T800 full mass 4.5 tons, dry mass 0.5 tons, implies 4 tons of fuel
* capacity 360/440 units, implies 11.1kg per unit of liquid fuel and
  corresponding oxidizer
* implies 52/64 is 578kg
* implies dry mass (ignoring resupply fuel) is 13102kg
* implies remaining dV is 148m/s

Using the formula for dV from the [cheat sheet][cheat-sheet]:

$$
\Delta{v} = ln\left(\frac{M_{start} }{M_{end} }\right) \cdot I_{sp} \cdot 9.81 \frac{m}{s^2}
$$

We get the following result for remaining dV:

$$
148 \frac{m}{s^2} = ln\left(\frac{ 13680kg }{ 13102kg }\right) \cdot 350s \cdot 9.81 \frac{m}{s^2}
$$


This will not be enough to circularize (~250m/s)

For comparison, suppose we had LV909 engine (better ISP), we'd have 160m/s of dV
left, plus any extra we had left over from the initial intercept burn.

$$
160 \frac{m}{s^2} = ln\left(\frac{ 14080kg }{ 13502kg }\right) \cdot 390s \cdot 9.81 \frac{m}{s^2}
$$

After the 150m/s of dV left in the drive, we'll have to pull about 100m/s of dV
from the resupply tank. Kerbal Engineer suggests we've got 1400m/s between the
drive section and the resupply tank together. That should be &lt;8% of the
resupply tank. To be more precise, we can invert the dV equation:

$$
M_{end} = \displaystyle \frac{M_{start}}{e^{\bigg(\displaystyle \frac{\Delta{v}}{I_{sp} \cdot 9.81 \frac{m}{s^2}}\bigg)}}
$$

Using this form of the equation, we should be able to derive how much fuel
we'll need to achieve that 100m/s:

$$
13287kg = \displaystyle \frac{13680kg}{e^{\bigg(\displaystyle \frac{100\frac{m}{s^2}}{350s \cdot 9.81 \frac{m}{s^2}}\bigg)}}
$$

This implies we'll use 393kg of fuel. At our prior estimate of 11.1kg per unit
of liquid and corresponding oxidizer, that gives us 35 units of liquid fuel and
corresponding oxidizer. This is about 5% of the resupply tank, in line with our
prior estimate above (&lt;8%). This is reasonable.

We can also plug in the parameters if we had the LV909:

$$
13716kg = \displaystyle \frac{14080kg}{e^{\bigg(\displaystyle \frac{100\frac{m}{s^2}}{390s \cdot 9.81 \frac{m}{s^2}}\bigg)}}
$$

If we had the LV909, we'd need to use slightly less fuel, 33 units of liquid
fuel. It seems that we're getting close to the break-even point (in terms of
extra mass vs better efficiency) between the LV909 and the 48-7s.

These results suggest we should be able to get into Munar orbit with nearly a
full supply tank. However, we still need to rendezvous with SciStat, which
includes an inclination change. This could be very expensive.

Munar Transfer
--------------

With the initial burn complete, it only remains to wait for Munar intercept.
The unmanned resupply vehicle is dependent on RemoteTech
antennae to stay in touch with KSC.

![Remote Tech communication path][remotetech-comm-path]{: .caption}

It's worth a check at this point that we've got all the settings correct before
we get too far away to fix any issues.

![Resupply vehicle talking to KerbComm B and D][resupply-to-kerbcomm-b-d]{: .caption}

The resupply vehicle is configured to talk to KerbComm B and D, and both
antennae are operational. And both B and D are configured to talk back.

Munar Capture
-------------

Once we're close enough to start planning for capture, it's clear we're 26.6
degrees inclined from SciStat. In our initial capture burn, we'll try and pull
in both our Ap and Pe in prep for a second inclination change.

![Munar capture requiring multiple 250m/s burns][munar-capture-planned-burns]{: .caption}

Unfortunately, as I thought earlier, we'll need about 250m/s of dV for the
plane change, after the initial capture burn of 250m/s. We'll probably end up
with about 90% of the resupply tank left after rendezvous.

* 250m/s dV
* 13680kg
* 30kN of thrust
* implies just over 2m/s^2 of acceleration
* implies 114s burn


We'll need to start our burn almost a minute ahead of each planned maneuver.

One issue with this plan is that my second maneuver node is on the dark side of
the moon. This means I'll have no line of site to Kerbin. For this second
maneuver I'll have to rely on the flight computer. I hope the two minute burn
doesn't end up being too complex a maneuver.

* Ran out of ElectricCharge just prior to burn, but got back into sun in time.
* 608/743 units of fuel (84%)
* 11.85t

Rendezvous
----------

Unfortunately, the new rendezvous point puts us on the dark side of the Mun
again. To avoid any issues with the rendezvous and docking, I re-target one of
my antennae at MunComm Observer, a communications relay satellite, co-orbiting
with the Mun, just outside its sphere of influence. Think of this as a
satellite at the Mun's L4 point. Of course, KSP doesn't model [Lagrange
points][lagrange-points], but this co-orbit provides a similar purpose for this
communication satellite.

![Reconfiguring the resupply vehicle to talk to MunComm Observer][reconfigure-muncomm-observer]{: .caption}

It looks like the Rendezvous burn will take another 60m/s of dV. Quite likely
we'll be down to &lt;80% of the resupply tank left.

* 580/709 units of fuel left
* 80% of supply tank remains

![Docking the lander in an imbalanced position][imbalanced-lander-docking]{: .caption}

First docked Lander to resupply vehicle multi-port docking adapter in an
imbalanced configuration. Ultimate goal is to dock resupply vehicle and leave
adapter behind.

Finally I docked the resupply vehicle with lander to SciStat to complete the
rendezvous and docking maneuvers.

![Resupply vehicle docked to SciStat with the lander in final configuration][final-docking]{: .caption}

Takeaways
---------
* Rocomax 48-7s on 15ton vehicle means ~2m/s of acceleration, for Munar
  injection that means we need to be ready for a burn at least 4 minutes before
  the burn. Let's call it 5 minutes.
* I should have done the calculations of acceleration well before the maneuver
* Having done some math, the **LV-909 would have been a better choice for the
  resupply vehicle.** It would have been harder to get into initial orbit, but
  with better efficiency and more thrust
* Pay attention to maneuvers when you've disabled cross-feed
* For RemoteTech automated burns, pull the maneuver node closer by half the
  expected burn time
* [Kramdown][kramdown] and [Mathjax][mathjax] are awesome!

[x200-16-fuel-tank]: http://wiki.kerbalspaceprogram.com/wiki/Rockomax_X200-16_Fuel_Tank
[cheat-sheet]: http://wiki.kerbalspaceprogram.com/wiki/Cheat_Sheet
[lagrange-points]: https://en.wikipedia.org/wiki/Lagrange_points
[kramdown]: http://kramdown.gettalong.org/
[mathjax]: http://www.mathjax.org/

[munar-intercept]: {{site.baseurl}}/images/scistat-resupply/munar-intercept.png
[remotetech-comm-path]: {{site.baseurl}}/images/scistat-resupply/remotetech-comm-path.png
[resupply-to-kerbcomm-b-d]: {{site.baseurl}}/images/scistat-resupply/resupply-to-kerbcomm-b-d.png
[munar-capture-planned-burns]: {{site.baseurl}}/images/scistat-resupply/munar-capture-planned-burns.png
[reconfigure-muncomm-observer]: {{site.baseurl}}/images/scistat-resupply/reconfigure-muncomm-observer.png
[imbalanced-lander-docking]: {{site.baseurl}}/images/scistat-resupply/imbalanced-lander-docking.png
[final-docking]: {{site.baseurl}}/images/scistat-resupply/final-docking.png

