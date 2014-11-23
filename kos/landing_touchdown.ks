//first get the thrust for the current stage

set max_thrust to ship:maxthrust.

set g TO ship:body:mu / ship:body:radius^2 * ship:up:vector.
//set g to ship:sensors:grav.

set dt to 0.001.
lock desired_landing_speed to -5.0 - alt:radar^1.5/50.0.
lock actual to ship:velocity:surface.

set Kp to 1.0.
set Ki to 2.0.
set Kd to 0.75.

set I to V(0,0,0).
set D to V(0,0,0).

set correction to -1 * g.
lock target_thrust to Kp * correction + Ki * I + Kd * D.
lock in_deadzone to correction:mag < g:mag / 4.0.

lock required_thrust to target_thrust:mag / ship:mass.

set correction_arrow to vecdraw().
set correction_arrow:show to true.
set correction_arrow:color to red.

set I_arrow to vecdraw().
set I_arrow:show to true.
set I_arrow:color to green.

set D_arrow to vecdraw().
set D_arrow:show to true.
set D_arrow:color to yellow.

set target_thrust_arrow to vecdraw().
set target_thrust_arrow:show to true.
set target_thrust_arrow:color to purple.

sas off.
lock steering to target_thrust.

when vang(ship:facing:vector, target_thrust) <= 2 then {
    lock throttle to min(1, max(0, required_thrust / max_thrust)).
    preserve.
}

when vang(ship:facing:vector, target_thrust) > 2 then {
    lock throttle to 0.
    preserve.
}

set steer to ship:up.
lock steering to steer.
lock throttle to thrott.

set last_correction to V(0,0,0).
until alt:radar < 5 {

    set target_vec to ship:up:vector * desired_landing_speed.
    set angle_to_up to vang(target_vec-actual, ship:up:vector).

    if angle_to_up >= 90  {
        set correction to vxcl(ship:up:vector, target_vec - actual).
    } else {
        set correction to target_vec - actual.
    }

    if NOT in_deadzone {
        set I to I + correction * dt.
        set D to (correction - last_correction) * dt.
        set last_correction to correction.
        set steer to target_thrust.
        if vang(ship:facing:vector, target_thrust) < 2 {
            set thrott to min(1, max(0, required_thrust / max_thrust)).
        } else {
            set thrott to 0.
        }
    } else {
        set thrott to 0.
        set steer to ship:up.
    }

    set correction_arrow:vec to correction.
    set I_arrow:vec to I.
    set D_arrow:vec to D.
    set target_thrust_arrow:vec to target_thrust.
    clearscreen.
    print "correction: "+correction:mag.
    print "accel: "+target_thrust:mag.
    print "g:     "+g:mag.
    print "thrust:     "+required_thrust.
    print "max thrust: "+max_thrust.
    print "agl: "+alt:radar.
    print "in_deadzone: "+in_deadzone.
    wait dt.
}

lock throttle to 0.
lock steering to ship:up.
unlock throttle.
unlock steering.
