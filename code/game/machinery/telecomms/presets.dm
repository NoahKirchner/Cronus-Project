// ### Preset machines  ###

//Relay

/obj/machinery/telecomms/relay/preset
	network = "Cronus"

/obj/machinery/telecomms/relay/preset/station
	id = "Station Relay"
	listening_level = 2
	autolinkers = list("s_relay")

/obj/machinery/telecomms/relay/preset/telecomms
	id = "Telecomms Relay"
	autolinkers = list("relay")

/obj/machinery/telecomms/relay/preset/mining
	id = "Mining Relay"
	autolinkers = list("m_relay")

/obj/machinery/telecomms/relay/preset/firstdeck
	id = "First Deck Relay"
	autolinkers = list("1_relay")

/obj/machinery/telecomms/relay/preset/seconddeck
	id = "Second Deck Relay"
	autolinkers = list("2_relay")

/obj/machinery/telecomms/relay/preset/thirddeck
	id = "Third Deck Relay"
	autolinkers = list("3_relay")

/obj/machinery/telecomms/relay/preset/fourthdeck
	id = "Fourth Deck Relay"
	autolinkers = list("4_relay")

/obj/machinery/telecomms/relay/preset/ruskie
	id = "Ruskie Relay"
	hide = 1
	toggled = 0
	autolinkers = list("r_relay")

/obj/machinery/telecomms/relay/preset/centcom
	id = "Centcom Relay"
	hide = 1
	toggled = 1
	//anchored = 1
	//use_power = 0
	//idle_power_usage = 0
	produces_heat = 0
	autolinkers = list("c_relay")

//HUB

/obj/machinery/telecomms/hub/preset
	id = "Hub"
	network = "Cronus"
	autolinkers = list("hub", "relay", "c_relay", "s_relay", "m_relay", "r_relay", "1_relay", "2_relay", "3_relay", "4_relay", "s_relay", "science", "medical",
	"supply", "service", "common", "command", "engineering", "security", "unused",
	"receiverA", "broadcasterA", "emergency", "survey", "medsci", "services")

/obj/machinery/telecomms/hub/preset_cent
	id = "CentComm Hub"
	network = "Cronus"
	produces_heat = 0
	autolinkers = list("hub_cent", "c_relay", "s_relay", "m_relay", "r_relay",
	 "centcomm", "receiverCent", "broadcasterCent")

//Receivers

/obj/machinery/telecomms/receiver/preset_right
	id = "Receiver A"
	network = "Cronus"
	autolinkers = list("receiverA") // link to relay
	freq_listening = list(AI_FREQ, SCI_FREQ, MED_FREQ, SUP_FREQ, COMM_FREQ, ENG_FREQ, SEC_FREQ, MRD_FREQ,SVC_FREQ, EMG_FREQ, SUR_FREQ)

	//Common and other radio frequencies for people to freely use
	New()
		for(var/i = PUBLIC_LOW_FREQ, i < PUBLIC_HIGH_FREQ, i += 2)
			freq_listening |= i
		..()

/obj/machinery/telecomms/receiver/preset_cent
	id = "CentComm Receiver"
	network = "Cronus"
	produces_heat = 0
	autolinkers = list("receiverCent")
	freq_listening = list(ERT_FREQ, DTH_FREQ)


//Buses

/obj/machinery/telecomms/bus/preset_one
	id = "Bus 1"
	network = "Cronus"
	freq_listening = list(SCI_FREQ, MED_FREQ, MRD_FREQ, SUR_FREQ)
	autolinkers = list("processor1", "science", "medical", "survey", "medsci")

/obj/machinery/telecomms/bus/preset_two
	id = "Bus 2"
	network = "Cronus"
	freq_listening = list(SUP_FREQ, SRV_FREQ, SVC_FREQ)
	autolinkers = list("processor2", "supply", "service", "services", "unused")

/obj/machinery/telecomms/bus/preset_two/New()
	for(var/i = PUBLIC_LOW_FREQ, i < PUBLIC_HIGH_FREQ, i += 2)
		if(i == PUB_FREQ)
			continue
		freq_listening |= i
	..()

/obj/machinery/telecomms/bus/preset_three
	id = "Bus 3"
	network = "Cronus"
	freq_listening = list(SEC_FREQ, COMM_FREQ, EMG_FREQ)
	autolinkers = list("processor3", "security", "command", "emergency")

/obj/machinery/telecomms/bus/preset_four
	id = "Bus 4"
	network = "Cronus"
	freq_listening = list(ENG_FREQ, AI_FREQ, PUB_FREQ, ENT_FREQ)
	autolinkers = list("processor4", "engineering", "common")

/obj/machinery/telecomms/bus/preset_cent
	id = "CentComm Bus"
	network = "Cronus"
	freq_listening = list(ERT_FREQ, DTH_FREQ, ENT_FREQ)
	produces_heat = 0
	autolinkers = list("processorCent", "centcomm")

//Processors

/obj/machinery/telecomms/processor/preset_one
	id = "Processor 1"
	network = "Cronus"
	autolinkers = list("processor1") // processors are sort of isolated; they don't need backward links

/obj/machinery/telecomms/processor/preset_two
	id = "Processor 2"
	network = "Cronus"
	autolinkers = list("processor2")

/obj/machinery/telecomms/processor/preset_three
	id = "Processor 3"
	network = "Cronus"
	autolinkers = list("processor3")

/obj/machinery/telecomms/processor/preset_four
	id = "Processor 4"
	network = "Cronus"
	autolinkers = list("processor4")

/obj/machinery/telecomms/processor/preset_cent
	id = "CentComm Processor"
	network = "Cronus"
	produces_heat = 0
	autolinkers = list("processorCent")

//Servers

/obj/machinery/telecomms/server/presets

	network = "Cronus"

/obj/machinery/telecomms/server/presets/emergency
	id = "Emergency Server"
	freq_listening = list(EMG_FREQ)
	autolinkers = list("emergency")

/obj/machinery/telecomms/server/presets/surveyor
	id = "Surveyor Server"
	freq_listening = list(SUR_FREQ)
	autolinkers = list("survey")

/obj/machinery/telecomms/server/presets/servicesnew
	id = "Services Server"
	freq_listening = list(SVC_FREQ)
	autolinkers = list("services")

/obj/machinery/telecomms/server/presets/medscinew
	id = "MedSci Server"
	freq_listening = list(MRD_FREQ)
	autolinkers = list("medsci")

/obj/machinery/telecomms/server/presets/science
	id = "Science Server"
	freq_listening = list(SCI_FREQ)
	autolinkers = list("science")

/obj/machinery/telecomms/server/presets/medical
	id = "Medical Server"
	freq_listening = list(MED_FREQ)
	autolinkers = list("medical")

/obj/machinery/telecomms/server/presets/supply
	id = "Supply Server"
	freq_listening = list(SUP_FREQ)
	autolinkers = list("supply")

/obj/machinery/telecomms/server/presets/service
	id = "Service Server"
	freq_listening = list(SRV_FREQ)
	autolinkers = list("service")

/obj/machinery/telecomms/server/presets/common
	id = "Common Server"
	freq_listening = list(PUB_FREQ, AI_FREQ, ENT_FREQ) // AI Private and Common
	autolinkers = list("common")

// "Unused" channels, AKA all others.
/obj/machinery/telecomms/server/presets/unused
	id = "Unused Server"
	freq_listening = list()
	autolinkers = list("unused")

/obj/machinery/telecomms/server/presets/unused/New()
	for(var/i = PUBLIC_LOW_FREQ, i < PUBLIC_HIGH_FREQ, i += 2)
		if(i == AI_FREQ || i == PUB_FREQ)
			continue
		freq_listening |= i
	..()

/obj/machinery/telecomms/server/presets/command
	id = "Command Server"
	freq_listening = list(COMM_FREQ)
	autolinkers = list("command")

/obj/machinery/telecomms/server/presets/engineering
	id = "Engineering Server"
	freq_listening = list(ENG_FREQ)
	autolinkers = list("engineering")

/obj/machinery/telecomms/server/presets/security
	id = "Security Server"
	freq_listening = list(SEC_FREQ)
	autolinkers = list("security")

/obj/machinery/telecomms/server/presets/centcomm
	id = "CentComm Server"
	freq_listening = list(ERT_FREQ, DTH_FREQ)
	produces_heat = 0
	autolinkers = list("centcomm")

/obj/machinery/telecomms/server/presets/medsci
	id = "MedSci Server"
	freq_listening = list(MRD_FREQ)
	autolinkers = list("medsci")


//Broadcasters

//--PRESET LEFT--//

/obj/machinery/telecomms/broadcaster/preset_right
	id = "Broadcaster A"
	network = "Cronus"
	autolinkers = list("broadcasterA")

/obj/machinery/telecomms/broadcaster/preset_cent
	id = "CentComm Broadcaster"
	network = "Cronus"
	produces_heat = 0
	autolinkers = list("broadcasterCent")