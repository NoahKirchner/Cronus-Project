#define THERMAL_RELEASE_MODIFIER		//How much heat it releases
#define PASSIVE_RADS					//Rads released in a small area when functioning normally
#define MELTDOWN_RADS					//Rads released when the reactor melts down
#define REACTION_POWER_MODIFIER			//








#define POWER_FACTOR
#define DECAY_FACTOR
#define CRITICAL_TEMPERATURE 5000	//Measured in K
#define DAMAGE_RATE_LIMIT




#define MELTDOWN_RADS 50
#define MELTDOWN_MOB_CONCUSSION 10



#define MELTDOWN_APC_OVERLOAD_PROB 20
#define MELTDOWN_SHUTDOWN_APC 120
#define MELTDOWN_SHUTDOWN_CRITAPC 10
#define MELTDOWN_SHUTDOWN_SMES 60
#define MELTDOWN_SHUTDOWN_RNG_FACTOR 20


#define WARNING_DELAY = 20







/obj/machinery/power/nuclearreactor
	name = "Nuclear Reactor Core"
	desc = "A heat resistant shell for housing and encouraging nuclear fission. <span class = 'danger'> Your clothes get warmer as you approach this object. </span>"
	icon = 'icons/obj/engine.dmi'
	icon_state = 'codernuclearreactor'
	density = 1
	anchored = 0
	light_range = 1

	layer = ABOVE_OBJ_LAYER

	rad power = 1 //So it gets added to the repository


	var/base_icon_state =

	var/damage = 0
	var/damage_archived = 0
	var/safe_alert = "Nuclear fission reactor returning to stable temperatures."
	var/safe_warned = 0
	var/public_alert = 0
	var/warning_point = 100
	var/warning_alert = "Nuclear fission reactor approaching dangerous temperatures."
	var/emergency_point = 700
	var/emergency_warning = "WARNING! REACTOR MELTDOWN IMMINENT!"
	var/meltdown_point = 1000

	light_color = ""
	var/warning_color = ""
	var/emergency_color = ""

	var/emergency_issued = 0

	var/last_warning = 0

	var/melted_down = 0	//Means that each reactor can only melt down one time, if set to 1 stops it from melting down.

	var/power = 0

	var/config_hallucination_power

	var/debug = 0


/object/machinery/object/power/nuclearreactor/proc/melted_down()
	set waitfor = 0

	if (melted_down)
		return

	log_and_message_admins("Reactor melting down at [x] [y] [z]")
	melted_down = 1
	var/turf/TS = get_turf(src)		//The turf the reactor's on.
	radiation_repository.z_radiate(TS, MELTDOWN_RADS)

	//Effect 1: Radiation that weakens all mobs on the z-level. Knocks them over.
	for(var/mob/living/mob in living_mob_list_)
		var/turf/TM = get_turf(mob)
		if(TS && TM && (TS.z == TM.z))
			mob.Weaken(MELTDOWN_MOB_CONCUSSION)
			to_chat(mob, "<span class='danger'>Suddenly your clothes grow warm and your legs heavier!</span>")

	//Effect 2: Z-Level wide electrical pulse.
	for(var/obj/machinery/power/apc/A in machines)
		if(A.z != TS.z)
			continue

		//Overloads lights.
		if (prob(MELTDOWN_APC_OVERLOAD_PROB))
			A.overload_lighting()
		//Causes the APCs to go into system failure mode.
		var/random_change = rand(100 - MELTDOWN_SHUTDOWN_RNG_FACTOR, 100 + MELTDOWN_SHUTDOWN_RNG_FACTOR) / 100
		if(A.is_critical)
			A.energy_fail(round(MELTDOWN_SHUTDOWN_CRITAPC * random_change))
		else
			A.energy_fail(round(MELTDOWN_SHUTDOWN_APC * random_change))

	for(var/obj/machinery/power/smes/buildable)
		if(S.z != TS.z)
			continue
		//Causes SMESs to shut down.
		var/random_change = rand(100 - MELTDOWN_SHUTDOWN_RNG_FACTOR, 100 + MELTDOWN_SHUTDOWN_RNG_FACTOR) /100
		S.energy_fail(round(MELTDOWN_SHUTDOWN_SMES * random_change))

//Light it outputs changes color and luminosity based on the state of the reactor. Green = Functioning normally, Yellow = Past safe heat levels, Red= Melting down
/object/machinery/power/nuclearreactor/proc/shift_light/(var/lum, var/clr)
	if(lum != light_range || clr != light_color)
		set_light(lum, l_color = clr)

/obj/machinery/power/nuclearreactor/proc/get_integrity()
	var/integrity = damage / meltdown_point
	integrity = round(100 - integrity * 100)
	integrity = integrity < 0 ? 0 : integrity
	return integrity

/obj/machinery/power/nuclearreactor/proc/announce_warning()
	var/integrity = get_integrity()
	var/alert_msg = " Integrity at [integrity]%"

	if(damage > emergency_point)
		alert_msg = emergency_alert + alert_msg
		lastwarning = world.timeofday - WARNING_DELAY * 4
	else if(damage >= damage_archived) //Damage is still going up.
		safe_warned = 0
		alert_msg = warning_alert + alert_msg
		lastwarning = world.timeofday
	else
		alert_msg = null
	if (alert_msg)
		global_announcer.autosay(alert_message, "Reactor Monitor", "Engineering")
		//public alerts
		if ((damage > emergency_point) && !public_alert)
			global_announcer.autosay("WARNING! REACTOR MELTDOWN IMMINENT!", "Reactor Monitor")
			public_alert = 1
		else if(safe_warned && public_alert)
			global_announcer.autosay(alert_msg, "Reactor Monitor")
			public_alert = 0





