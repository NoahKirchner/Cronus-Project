var/const/NETWORK_CRONUS = "Cronus"

/obj/machinery/camera/network/cronus
	network = list(NETWORK_CRONUS)

/obj/machinery/telecomms/relay/preset/shuttle
	id = "Calypso Relay"
	autolinkers = list("s_relay")

/datum/map/cronus/get_network_access(var/network)
	if(network == NETWORK_CRONUS)
		return access_mailsorting
	return ..()

/datum/map/cronus
	// Networks that will show up as options in the camera monitor program
	station_networks = list(
		NETWORK_CRONUS,
		NETWORK_ENGINE,
		NETWORK_FIRST_DECK,
		NETWORK_ROBOTS,
		NETWORK_POD,
		NETWORK_SECOND_DECK,
		NETWORK_SUPPLY,
		NETWORK_COMMAND,
		NETWORK_ENGINEERING,
		NETWORK_MEDICAL,
		NETWORK_RESEARCH,
		NETWORK_SECURITY,
		NETWORK_PRISON,
		NETWORK_ALARM_ATMOS,
		NETWORK_ALARM_FIRE,
		NETWORK_ALARM_POWER,
		NETWORK_THUNDER,
	)
