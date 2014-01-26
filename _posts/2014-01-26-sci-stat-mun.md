---
title: SciStat Munar Transport Mission
layout: post
date: 2014-01-26 15:43

---



Objective
---------

1. Design and build a multi-part ship capable of long-term missions
2. Deliver a station capable of supporting at least 3 scientific missions to
   the Munar surface
3. Establish a baseline process for supporting science missions from orbit

###Contents
* ToC
{:toc}

Vessels/Sections
----------------

To achieve the mission goals we'll construct a multi-part spacecraft/station
which will travel to the Mun, including a lander capable of landing, ascent and
rendezvous. The station will then support three such landing missions.

###SciStat Lab Section

The Lab section includes a mobile processing lab, communication facilities, and
fuel storage. This section provides the core support for lander science
missions. The objective is to support at least three to five landings before
the return vehicle carries results back to Kerbin. Ultimately, this section
could support interplanetary missions.  Establishing how many landings can be
supported will be an important measurement during this mission.

![SciStat Core in the VAB][lab-section-vab]{: .caption}

* Full Mass: 11085kg
* Dry Mass: 7085kg
* Fuel Capacity: 360/440

###SciStat Drive Section

The drive section provides fuel and propulsion to the Mun. Ultimately it might
provide propulsion outside the Kerbin sphere of influence. The drive section is
the most massive section of SciStat I, nearly half of which is fuel. For these
first missions to the Mun, that fuel will support refuelling the lander. In
addition to propulsion and fuel, the drive section carries a crew compartment
for housing crew separately from the lab section.

![SciStat Drive Section in the VAB, fuel empty][drive]{: .caption}

* Full Mass: 15873kg
* Dry Mass: 7873kg
* Fuel Capacity: 720/880

###SciStat Lander

A landing vehicle to carry out science missions on surface. TWR is above 1,
even on Kerbin.

![SciStat Lander in the VAB][lander]{: .caption}

* Full Mass: 3042kg
* Dry Mass: 1820kg
* Fuel Capacity: 110/134
* Delta-V: 1763m/s

###SciStat Return Vehicle

Primarily, the return vehicle just needs to carry scientific results back to
Kerbin. A test maneuver node from a vehicle in Munar orbit at 543m/s of
orbital velocity shows we need ~370m/s to get Pe ~42km from Mun. Since this
vehicle will ultimately support returns from Minmus and possibly beyond, we'll
design with more dV than that.

![SciStat Return Vehicle in the VAB][return-vehicle-vab]{: .caption}

* Full Mass: 2063kg
* Dry Mass: 1563kg
* Fuel Capacity: 45/55
* Delta-V: 790m/s

###SciStat Resupply Vehicle

The resupply vehicle will deliver fuel and a return vehicle to SciStat. It must
be able to get to Mun with full supply of fuel as well as the return vehicle. A
separate launch vehicle will be designed to get the resupply vehicle into orbit
from the Kerbin surface.

![SciStat Resupply Vehicle in the VAB][resupply-vab]{: .caption}

* Full Mass: 15405kg
* Dry Mass: 11405kg (with a full supply tank)
* Fuel Capacity: 360/440 drive + 720/880 supply tank
* Isp: 390
* Delta-V: 1150m/s (without touching supply tank)


Mission Notes: Launch to LKO
----------------------------

In this fist section of the mission, we'll simply launch the SciStat components
into low Kerbin orbit (LKO). This section of the mission will be complete once
all components are docked and fully prepped for launch to the Mun.

###SciStat Drive Section Launch

The SciStat lab section went up in an earlier set of mission. So the next
component to go up is the drive section along with the return vehicle.  Taking
up Jeb, Bill and Bob to man SciStat, conduct landing missions and return
science back to Kerbin.

The initial plan is to wait for SciStat to be roughly 20 degrees behind KSC,
initiate launch. Once Ap is ~72km (matching SciStat), circularize.

Ultimately, this proves to be too aggressive and the drive section ends up well
ahead of the lab section. We raise Ap to ~133km, reducing the orbital period so
the lab section can catch up.

Prior to intercept, we transfer remaining fuel from launch stage into the drive
section. We'll jettison the remaining launch stage while at Ap.

![Transferring the remaining launch fuel into the drive section][lifter-transfer-remaining-fuel]{: .caption}

Pointing prograde, the sepotrons will fire retrograde, pulling the launch stage
Pe below the atmosphere. Ultimately the launch stage will burn up in the
atmosphere.

![The remaining launch stage on a suborbital trajectory][lifter-deorbit]{: .caption}

At closest approach, we match velocity with SciStat and begin initial approach
maneuvers. We'll need to reconfigure the return vehicle to dock at the rear of
the drive section prior to final docking maneuvers. RCS fuel should be
sufficient, but is fairly low. So we'll need to stay efficient. This is all the
RCS fuel we'll have until a resupply run at the earliest.

Once the drive section is mated, Jeb, Bob, and Bill will hold in orbit until
the landing vehicle can arrive and the trip to the Mun can commence. Bob and
Bill head into the lab section to prep for science operations.

![Lab section operational][lab-operational]{: .caption}

In the end, we end up with about 255 of 260 units of mono propellent, a job
well done on docking. However, we've only got 190/232 units of 1125/1375 liquid
fuel/oxidizer. Kerbal Engineer says we've got 402m/s dV, which is not enough to
get to Mun, let alone conduct and supply ongoing Munar landings, the stated
goal of the mission. We'll need to resupply prior to launching to Mun.

###SciStat Lander Launch and Resupply for Mun Intercept

Before launching the lander into orbit, I thought a test flight would make
sense to test out the landing struts and clearance for the engine. The Rocomax
48-7S is surprisingly powerful and gives the lander a TWR > 1 on Kerbin. This
allows for a fun little flight to the top of the VAB:

![Coming in for a test landing on the VAB][lander-on-VAB]{: .caption}

The initial plan was to launch the lander along with a substantial fuel resupply
for the Munar intercept. However, this proved to be too much mass for a single
launch. Instead we'll break this into two separate launches.

Lander launch went according to (updated, two part) plan. I was able to
resupply about 300/320 units of fuel to the now complete SciStat vehicle. This
completely fills the SciStat Core and lander fuel tanks, but with just 9/11 of
720/880 fuel units in the drive section. The resupply launch will have to bring
almost an entirely full, 9 ton Rocomax X200-16 fuel tank.

With these new requirements, I designed and launched the SciStat Resupply
vehicle. Launch, rendezvous, and resupply went just fine. However, the
placement of the deorbit rockets (similar to those used to deorbit the final
drive section launch stage) ended up causing significant damage to the resupply
vehicle.

![Sepotrons pointed in the wrong direction :(][deorbit-rocket-direction-fail]{: .caption}

![Significant damage following planned deorbit burn failure][deorbit-rocket-damage]{: .caption}

In the end, the resupply vehicle split in two with the engine and deorbit
rockets hurtling into the atmosphere while the resupply fuel tank ended up
remaining in orbit with about 64 units of mono propellent.

I estimate I'll need about 45 to 55 m/s of dV to deorbit. With 64 units of
monoprop, I estimate I have about 90 m/s of dV which should be plenty to
deorbit what's left of the resupply vehicle.

![Resupply vehicle on reentry after RCS deorbit burn][resupply-deorbit]{: .caption}

Indeed, the deorbit maneuver went just fine. Not that it matters (the resupply
vehicle crashed violently into Kerbin), but I had 46 units of monoprop left
after the deorbit RCS burn.

With the initial launch into LKO, final construction of SciStat complete, and
remaining debris deorbited, we are ready to send SciStat to the Mun.

Mission Notes: Munar Intercept and Capture
------------------------------------------

In this segment of the mission we need to send SciStat into Munar orbit. The
primary goal is simple to achieve Munar orbit, but an important secondary goals
include achieving an inclined orbit, making landings at many latitudes less
expensive and retaining enough fuel to supply several Munar landings.

###Munar Intercept

The initial intercept plan is as follows:

* 8 Rocomax 24-77 engines, implies 160 kN of thrust
* ~30 tons implies 5.3 m/s^2 of acceleration
* 860m/s dV for a Munar intercept,~160 second burn

![Planned Munar intercept][planned-munar-intercept]{: .caption}

The actual burn left 390/477 units of fuel out of 1080/1320 capacity in drive
and lab  sections, with lander and return vehicle fully fueled. So far we're on
a reasonable course to hit our goals.

![Actual Munar intercept][actual-munar-intercept]{: .caption}

* ~22 tons implies ~7.3m/s of thrust
* 270 m/s dV for capture, ~36 second burn to Pe 50km
* 25 m/s dV for Ap 50km, ~3 second burn
* Target inclined orbit ~30 degrees for low-cost landings to many latitudes

![SciStat in Munar orbit][in-munar-orbit]{: .caption}

* ~50km x 50km, 3077s orbital period
* Lander and return vehicle full fueled
* Lab and drive sections hold 197/241 units of fuel

Final orbit looks good. The remaining fuel should be enough to re-fuel the
lander nearly twice. With the initial fuel in the lander, this should supply at
least two and possibly three Munar landings. This is well within our original
goals.

With the completion of Munar capture, we've achieved our first two mission
goals: We have a functioning space station in orbit around a non-Kerbin body
capable of launching and supporting multiple missions to the surface.

The remaining questions are:

* Can our lander successfully conduct multiple scientifically significant
  missions?
* Can our return vehicle carry the results of those multiple missions back to
  Kerbin?

In particular I'm concerned about:

* Does the lander have enough fuel to land, relaunch and rendezvous with
  SciStat?
* Is the scientific carrying capacity of the return vehicle enough to carry
  back all the results collected?

I suspect we'll need to transmit back crew and EVA reports since each capsule
can carry only one of each. Fortunately, these seem to transmit at 100%
efficiency.

Mission Notes: SciStat First Landing
------------------------------------

The SciStat Lander has 1763m/s of dV which should be plenty to land, relaunch
and rendezvous with SciStat. The first landing will be at a virgin landing
site. I hope to collect in the neighborhood of 200 units of science. In all,
prior to the first Kerbin return, I hope to collect between 600 and 1000 units
of science.

* Total landing should burn roughly 640m/s dV
* leaving ~1128m/s dV for ascent
* Rocomax 48-7S engine produces 30kN thrust
* ~3tons full mass implies 10m/s acceleration at full mass
* ~1.8ton dry mass implies 16m/s acceleration at dry mass
* goal is 480m/s dV after ascent and rendezvous with SciStat

Initial descent burn:

* 120m/s initial landing burn, ~12sec burn
* leave at least 102/124 units of fuel and 1648m/s dV

![Lander initial descent to Mun][initial-descent]{: .caption}

Initial burn executed according to plan.

###Descent

* at least 390m/s dV (remaining orbital speed after initial descent burn)
* The [cheat sheet][cheat-sheet] suggests 520m/s dV (130m/s extra)
* expect 1128m/s dV left for ascent
* [Kerbal Engineer][kerbal-engineer] suggests roughly 5 minutes to impact
* target landing vertical velocity is ~5m/s
* begin slow descent burn at roughly 25km above terrain
* contain vertical velocity to 140m/s
* at 10km above terrain, target 100m/s vertical velocity
* target 10m/s per km of terrain altitude, until 10m/s
* kill horizontal velocity by 1km
* target 5m/s prior to landing

Roughly 30 seconds in, we have nearly 90m/s of vertical velocity, by 319m/s of
horizontal velocity.

####25km above Munar surface

* 455m/s orbital velocity
* 142m/s vertical velocity
* 305m/s horizontal velocity
* 1638m/s dV left
* begin descent burn according to plan

####11km above Munar surface

* 418m/s orbital velocity
* 140m/s vertical velocity
* 270m/s horizontal velocity
* 1561m/s dV left (77m/s spent for 37m/s change in orbital velocity, 50% efficiency)
* increase throttle to match plan

####5.4km above Munar surface

* 147m/s orbital velocity
* 53m/s vertical velocity
* 95m/s horizontal velocity
* 1270m/s dV left (291m/s vs 271m/s 93% efficiency)

####1km above Munar surface

* 58.3m/s orbital velocity
* 47m/s vertical velocity
* 6.5m/s horizontal velocity
* 1087m/s dV left (183m/s vs 125m/s 68% efficiency)
* increase burn to drop vertical velocity and kill horizontal
* turn on lights

####80m above Munar surface

* 9.3m/s vertical velocity
* no significant horizontal velocity
* 942m/s dV (145m/s vs 49m/s 33% efficiency)
* 50/61 units of fuel
* spent 821m/s dV on landing
* maintain descent, hold throttle to decrease vertical velocity to 5m/s at
  landing

The landing went fine, final dV 921m/s. We spent 200m/s more dV than planned.
Primarily I believe the initial descent was to conservative. We have enough
thrust to hold off initial descent burn until much later. We should be able to
kill at least 9m/s of vertical velocity per second, and perhaps as much as
14m/s^s. Total descent took more than 5 minutes. Perhaps we would have gotten
about 200m/s vertical velocity by 10km with under 50seconds to impact. At that
point we could kill the vertical velocity in 25seconds, and maintain safe
descent until landing 

![Jeb on Munar surface after first landing of SciStat lander][lander-on-mun]{: .caption}

###Ascent:

* at least 500m/s dV to 50 by 50km orbit
* at least 50 seconds to achieve 500m/s
* extra for rendezvous
* target launch when SciStat is roughly 70km away

####Initial Ascent Burn:

* Ap 53km
* Closest approach to SciStat 2.8km
* 250m/s dV left (692m/s dV burned)
* at least 150m/s dV needed to circularize

####Stabilize Orbit Burn:

* 50 by 24km orbit
* 2.8km from SciStat
* 98m/s dV left
* 13.7m/s relative velocity

####Rendezvous Burn

* 200m closest approach
* 9m to closest approach
* 3m/s relative velocity (almost entirely toward SciStat)
* 85m/s dV left

![SciStat Closest Approach][lander-closest-approach]{: .caption}

Plenty of dV left for rendezvous and docking. Plus nearly all mono propellent
remains for final docking maneuvers.

Initial burn was much more expensive than expected. New estimate for remaining
fuel after rendezvous is ~100m/s dV. This is much less than originally planned.
This clearly indicates we need to re-assess current plans for hitting multiple
latitudes. Such maneuvers would require substantially more dV for any plane
changes which would be required for landing and/or rendezvous.

###Rendezvous

![Refuelling the lander after rendezvous with SciStat][refuel-lander]{: .caption}

Rendezvous was not an issue. However, only 91/111 units of fuel remain for
supply after refuelling lander. This is probably plenty to bring SciStat to a
lower orbit (necessary given costs of landings). But this certainly pushes up
the schedule for the resupply mission.

Take Aways
----------

* A 15 degree lead, even for a heavy vehicle, is too much for an intercept.
  **10 degree lead for intercept**
* Drive section has more than enough thrust to circularize, could have
  transfered fuel and jettisoned launch stage prior to circularization burn.
* TWR must be above 1 for all stages prior to orbit circularization, there's no
  skimping until stable orbit is achieved. A rule of thumb is that you should
  be able to lift-off from Kerbin and hit terminal velocity (~100m/s at
  surface) with 75% throttle. **TWR > 1 for all stages to orbit**
* I made some mistakes with fuel capacity and usage sending SciStat on Munar
  capture. This led to less fuel remaining after capture than originally
  planned. Knowing this ahead of time would not have changed much except plans
  for the first resupply mission. But if I had less fuel to begin with, I might
  have not had enough fuel for the capture. **Measure dV and expected fuel
  consumption for each planned maneuver**
* **Fuel cross-feed can be disabled at each docking port** which is probably
  easier than turning off each fuel tank individually. 
* Between RemoteTech dishes and the science lab operations, I'm using a lot of
  power. Even with 1110 units of ElectricCharge storage, I still run out while
  the Mun eclipses Kerbol. **Include at least 1500 EC**
* Location of the solar panels on the lander means we only generate energy
  while pointing towards the sun. **At least 150 EC for landers or solar panels
  generate at most headings**
* I could optimize the efficiency of the descent given known acceleration.
  **start final descent burn much later, perhaps no burn until 10km.** This
  requires more investigation
* The [cheat sheet][cheat-sheet] dV numbers to orbit from mun are for orbit much
  closer than 50 by 50km. **Reposition SciStat at lower orbit**

[lab-section-vab]: {{site.baseurl}}/images/sci-stat/lab-section-vab.png
[return-vehicle-vab]: {{site.baseurl}}/images/sci-stat/return-vehicle-vab.png
[resupply-vab]: {{site.baseurl}}/images/sci-stat/resupply-vab.png
[drive]: {{site.baseurl}}/images/sci-stat/sci-stat-drive-empty-at-launch.png
[lander]: {{site.baseurl}}/images/sci-stat/lander.png
[lifter-transfer-remaining-fuel]: {{site.baseurl}}/images/sci-stat/lifter-transfer-remaining-fuel.png
[lifter-deorbit]: {{site.baseurl}}/images/sci-stat/lifter-deorbit.png
[lab-operational]: {{site.baseurl}}/images/sci-stat/lab-operational.png
[deorbit-rocket-direction-fail]: {{site.baseurl}}/images/sci-stat/deorbit-rocket-direction-fail.png
[deorbit-rocket-damage]: {{site.baseurl}}/images/sci-stat/deorbit-rocket-damage.png
[resupply-deorbit]: {{site.baseurl}}/images/sci-stat/resupply-deorbit.png
[in-munar-orbit]: {{site.baseurl}}/images/sci-stat/in-munar-orbit.png
[cheat-sheet]: http://wiki.kerbalspaceprogram.com/wiki/Cheat_Sheet
[lander-on-vab]: {{site.baseurl}}/images/sci-stat/lander-on-vab.png
[planned-munar-intercept]: {{site.baseurl}}/images/sci-stat/planned-munar-intercept.png
[actual-munar-intercept]: {{site.baseurl}}/images/sci-stat/actual-munar-intercept.png
[kerbal-engineer]: http://forum.kerbalspaceprogram.com/threads/18230-0-23-Kerbal-Engineer-Redux-v0-6-2-3
[initial-descent]: {{site.baseurl}}/images/sci-stat/initial-descent.png
[lander-on-mun]: {{site.baseurl}}/images/sci-stat/lander-on-mun.png
[lander-closest-approach]: {{site.baseurl}}/images/sci-stat/lander-closest-approach.png
[refuel-lander]: {{site.baseurl}}/images/sci-stat/refuel-lander.png
