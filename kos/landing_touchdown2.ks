//first get the thrust for the current stage

set max_thrust to ship:maxthrust.
set lf0 to ship:liquidfuel.

set g TO ship:body:mu / ship:body:radius^2 * -1 * ship:up:vector.
//set g to ship:sensors:grav.

set wait_time to 0.001.

//----------- initialize PID model -----

//lock desired_landing_speed to -5.0 - alt:radar^2/200.
lock desired_landing_speed to -0.5 * sqrt(25 + 2* (max_thrust / ship:mass - g:mag) * alt:radar).

set initial_descent_height to 1000.
until alt:radar < initial_descent_height {
    clearscreen.
    print "initial descent agl: "+initial_descent_height.
    print "agl:                 "+alt:radar.
    print "desired vspeed: "+desired_landing_speed.
    print "current vspeed: "+ship:verticalspeed.
    print "current hspeed: "+ship:surfacespeed.
}

//100 is plenty for a small craft
//500 might be too little for a very large craft
set final_descent_height to 100.
when alt:radar < final_descent_height then {
    lock desired_landing_speed to -5 + -1 * (alt:radar/(final_descent_height/10))^2.
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
set t0 to TIME:SECONDS.
lock P_vertical to (P-vxcl(ship:up:vector,P)).
lock I_vertical to (I-vxcl(ship:up:vector,I)).
lock D_vertical to (D-vxcl(ship:up:vector,D)).
lock logline to ((TIME:SECONDS - t0) + ","+(P_vertical:mag)+","+(I_vertical:mag)+","+(D_vertical:mag)).

set last_P to V(0,0,0).
set last_t to TIME:SECONDS.
until NOT (status = "FLYING") {

    set target_vec to ship:up:vector * desired_landing_speed.
    set error_term to (target_vec - actual).

    set dt to TIME:SECONDS - last_t.
    set last_t to TIME:SECONDS.
    //--------- update the PID model
    set P to error_term.
    set D to (P - last_P) * dt.
    set I_update to error_term * dt.
    // I carries its value from the last iteration
    set last_P to P.

    set target_thrust to ((modeled_error - g) * mass).
    if vang(target_thrust, ship:up:vector) > 90 {
        set target_thrust to vxcl(ship:up:vector, target_thrust).
        set I_update to vxcl(ship:up:vector, error_term) * dt.
        set kill_hv to true.
    } else {
        set kill_hv to false.
    }
    set required_thrust to target_thrust:mag.

    if NOT in_deadband {
        set steer to target_thrust.
        if vang(ship:facing:vector, target_thrust) < 10 {
            set thrott to min(1, max(0, required_thrust / max_thrust)).
            set I to I + I_update.
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
    print "accel: "+required_thrust/ship:mass.
    print "g:     "+g:mag.
    print "required_thrust: "+required_thrust.
    print "max thrust:      "+max_thrust.
    print "in_deadband: "+in_deadband.
    print "kill_hv:     "+kill_hv.
    print "agl:    "+alt:radar.
    print "status: "+status.
    print "consumed liquid fuel: "+(lf0 - ship:liquidfuel).

    log logline to "pid.log".

    wait wait_time.
}

//copy "pid.log" to 0.

lock throttle to 0.
lock steering to ship:up.
unlock throttle.
unlock steering.
