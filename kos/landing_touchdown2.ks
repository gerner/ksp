//first get the thrust for the current stage

set max_thrust to ship:maxthrust.

set g TO ship:body:mu / ship:body:radius^2 * -1 * ship:up:vector.
//set g to ship:sensors:grav.

set dt to 0.001.

//----------- initialize PID model -----

//lock desired_landing_speed to -5.0 - alt:radar^2/200.
lock desired_landing_speed to -0.5 * sqrt(25 + 2* (max_thrust / ship:mass - g:mag) * alt:radar).

//100 is plenty for a small craft
//500 might be too little for a very large craft
set final_descent_height to 500.
when alt:radar < final_descent_height then {
    lock desired_landing_speed to -3 + -1 * (alt:radar/(final_descent_height/10))^2.
}

lock actual to ship:velocity:surface.

set Kp to 3.0.
set Ki to 0.0.
set Kd to 0.0.

set P to -1 * g.
set I to V(0,0,0).
set D to V(0,0,0).

lock modeled_error to Kp * P + Ki * I + Kd * D.
set required_thrust to 0.0.
lock in_deadband to required_thrust < g:mag/2.

//------------ VECDRAW ---------------
set P_arrow to vecdraw().
set P_arrow:show to true.
set P_arrow:color to blue.

set I_arrow to vecdraw().
set I_arrow:show to true.
set I_arrow:color to yellow.

set D_arrow to vecdraw().
set D_arrow:show to true.
set D_arrow:color to red.

set target_thrust_arrow to vecdraw().
set target_thrust_arrow:show to true.
set target_thrust_arrow:color to purple.


//----------- prep for landing
sas off.

set steer to ship:up.
set thrott to 0.0.
lock steering to steer.
lock throttle to thrott.

//---------- landing loop
set last_P to V(0,0,0).
until status = "LANDED"{

    set target_vec to ship:up:vector * desired_landing_speed.

    //--------- update the PID model
    set P to (target_vec - actual).
    set I to I + P * dt.
    set D to (P - last_P) * dt.
    set last_P to P.

    set target_thrust to ((modeled_error - g) * mass).

    //--------- choose actual thrust
    set angle_to_up to vang(target_thrust, ship:up:vector).
    if angle_to_up >= 90  {
        set target_thrust to vxcl(ship:up:vector, target_thrust).
    }

    set required_thrust to target_thrust:mag.

    if NOT in_deadband {
        set steer to target_thrust.
        if vang(ship:facing:vector, target_thrust) < 10 {
            set thrott to min(1, max(0, required_thrust / max_thrust)).
        } else {
            set thrott to 0.
        }
    } else {
        set required_thrust to 0.
        set thrott to 0.
        set steer to ship:up.
    }

    set P_arrow:vec to P.
    set I_arrow:vec to I.
    set D_arrow:vec to D.
    set target_thrust_arrow:vec to target_thrust.

    clearscreen.
    print "P:              "+P:mag.
    print "I:              "+I:mag.
    print "D:              "+D:mag.
    print "desired vspeed: "+desired_landing_speed.
    print "current vspeed: "+ship:verticalspeed.
    print "current hspeed: "+ship:surfacespeed.
    print "accel: "+target_thrust:mag * ship:mass / dt.
    print "g:     "+g:mag.
    print "required_thrust: "+required_thrust.
    print "max thrust:      "+max_thrust.
    print "in_deadband: "+in_deadband.
    print "agl:    "+alt:radar.
    print "status: "+status.
    wait dt.
}

lock throttle to 0.
lock steering to ship:up.
unlock throttle.
unlock steering.
