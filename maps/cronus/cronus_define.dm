/datum/map/ship1
	name = "Cronus"
	full_name = "USCSS Cronus"	//Heliades class
	path = "cronus"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	lobby_icon = 'maps/cronus/cronus_lobby.dmi'

	station_levels = list(1,2)	//Includes the ship and the planet.
	contact_levels = list(1,2)	//Where the announcement systems reach.
	player_levels = list(1,2,3,4,5,6,7,8,9)	//Levels for players to use and such. Includes any sort of area for derelict that isn't on Z-level
	admin_levels = list(10)	//Handles things like transit and centcomm

	accessible_z_levels = list("1"=1,"2"=1,"3"=1,"4"=1,"5"=1,"6"=30)	//Z levels that players can reach by normal means

	allowed_spawns = list("Cryogenic Storage", "Cyborg Storage")

	station_name  = "USCSS Cronus"
	station_short = "Cronus"
	dock_name     = "Cronus"
	boss_name     = "Extrasolar Colonization Administration"
	boss_short    = "Colonial Administration"
	company_name  = "Weyland Yutani"
	company_short = "WY"

	shuttle_docked_message = "Attention all hands: Ion Plasma Engines heating up and preparing for faster than light travel, prepare all departments and equipment for extended space travel. Estimated time until departure: %ETD%."
	shuttle_leaving_dock = "Attention all hands: The USCSS Cronus has begun faster than light travel. Estimated time until destination: %ETA%."
	shuttle_called_message = "Attention all hands: Ion Plasma Engines preparing for faster than light travel. Estimated time until evacuation: %ETA%."
	shuttle_recall_message = "Attention all hands: Engine heating procedures aborted, return to standard operating procedures."
	emergency_shuttle_docked_message = "Attention all hands: the escape pods are now unlocked. You have %ETD% to board the escape pods."
	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, arriving at rendezvous point in %ETA%."
	emergency_shuttle_called_message = "Attention all hands: emergecy evacuation procedures are now in effect. Escape pods will unlock in %ETA%"
	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/pods

	default_law_type = /datum/ai_laws/solgov

/datum/map/torch/perform_map_generation()
	new /datum/random_map/automata/cave_system(null,1,1,7,255,255) // Create the mining Z-level.
	new /datum/random_map/noise/ore(null,1,1,7,64, 64)             // Create the mining ore distribution map.
	new /datum/random_map/automata/cave_system(null,1,1,9,255,255) // Create the mining Z-level.
	new /datum/random_map/noise/ore(null,1,1,9,64, 64)             // Create the mining ore distribution map.
	return 1