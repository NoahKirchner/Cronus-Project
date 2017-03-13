/datum/map/cronus
	allowed_jobs = list(/datum/job/mco, /datum/job/ca,
						/datum/job/bridge_crew, /datum/job/pilot,
						/datum/job/hos, /datum/job/officer,
						/datum/job/detective, /datum/job/sci_o,
						/datum/job/Paramedic, /datum/job/scientist,
					    /datum/job/roboticist, /datum/job/surveyor,
					    /datum/job/chief_engineer, /datum/job/engineer,
					    /datum/job/atmos, /datum/job/serv_o,
					    /datum/job/qm, /datum/job/mining,
					    /datum/job/workingjoe, /datum/job/assistant
						)



//Command

var/datum/announcement/minor/captain_announcement = new(do_newscast = 1)
/datum/job/mco
	title = "Mission Commander"
	department = "Command"
	head_position = 1
	department_flag = COM
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Weyland-Yutani Extrasolar Colonization Administration"
	selection_color = "#1d1d4f"
	req_admin_notify = 1
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 30
	economic_modifier = 20

	ideal_character_age = 70 // Old geezer captains ftw
	outfit_type = /decl/hierarchy/outfit/job/mco

/datum/job/captain/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(src)

/datum/job/captain/get_access()
	return get_all_station_access()


/datum/job/ca
	title = "Colonial Administrator"
	head_position = 1
	department_flag = COM|CIV
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the mission commander"
	selection_color = "#2f2f7f"
	req_admin_notify = 1
	minimal_player_age = 30
	economic_modifier = 10
	ideal_character_age = 50

	access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway)
	minimal_access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway, access_bridge_storage)

	outfit_type = /decl/hierarchy/outfit/job/ca


/datum/job/hos
	title = "Colonial Marshal"
	head_position = 1
	department = "Colonial Marshal Bureau"
	department_flag = SEC|COM
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the mission commander and Weyland-Yutani"
	selection_color = "#8e2929"
	req_admin_notify = 1
	economic_modifier = 10
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks,
			            access_bridge_storage)
	minimal_player_age = 14
	outfit_type = /decl/hierarchy/outfit/job/cm

/datum/job/hos/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)


/datum/job/chief_engineer
	title = "Chief Engineer"
	head_position = 1
	department = "Engineering"
	department_flag = ENG|COM
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the missoin commander"
	selection_color = "#7f6e2c"
	req_admin_notify = 1
	economic_modifier = 10

	ideal_character_age = 50


	access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels,
			            access_teleporter, access_external_airlocks, access_atmospherics, access_emergency_storage, access_eva,
			            access_heads, access_construction, access_sec_doors,
			            access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload)
	minimal_access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels,
			            access_teleporter, access_external_airlocks, access_atmospherics, access_emergency_storage, access_eva,
			            access_heads, access_construction, access_sec_doors,
			            access_ce, access_RC_announce, access_keycard_auth, access_tcomsat, access_ai_upload)
	minimal_player_age = 30
	outfit_type = /decl/hierarchy/outfit/job/chief_engineer


/datum/job/sci_o
	title = "Science Officer"
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	department = "MedSci"
	department_flag = COM | SCI | MED
	faction = "Station"
	supervisors = "the mission commander"
	selection_color = ""
	req_admin_notify = 1
	economic_modifier = 10
	access = list()
	minimal_access = list()
	outfit_type = /decl/hierarchy/outfit/job/sci_o


/datum/job/serv_o
	title = "Services Officer"
	head_position = 1
	total_positions = 1
	spawn_positions = 1
	department = "Services"
	department_flag = COM | CIV
	faction = "Station"
	supervisors = "the mission commander"
	selection_color = "#696969"
	req_admin_notify = 1
	economic_modifier = 10
	access = list()
	minimal_access = list()
	minimal_player_age = 20
	outfit_type = /decl/hierarchy/outfit/job/serv_o

/datum/job/pilot
	title = "Pilot"
	department_flag = COM
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the mission commander"
	selection_color = "#2f2f7f"
	minimal_player_age = 25
	economic_modifier = 7
	access = list()
	minimal_access = list()
	outfit_type = /decl/hierarchy/outfit/job/assistant

/datum/job/bridge_crew
	title = "Bridge Crewman"
	department_flag = COM
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the mission commander"
	selection_color = "#2f2f7f"
	minimal_player_age = 20
	economic_modifier = 7
	access = list()
	minimal_access = list()
	outfit_type = /decl/hierarchy/outfit/job/assistant

//Security


/datum/job/detective
	title = "Forensic Technician"
	department = "Colonial Marshal Bureau"
	department_flag = SEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the marshal"
	selection_color = "#601c1c"
	economic_modifier = 5
	access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels)
	minimal_access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/detective


/datum/job/officer
	title = "Deputy Marshal"
	department = "Colonial Marshal Bureau"
	department_flag = SEC
	faction = "Station"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the marshal"
	selection_color = "#601c1c"
	economic_modifier = 4
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/officer


//MedSci

/datum/job/scientist
	title = "Researcher"
	department = "MedSci"
	department_flag = SCI | MED
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the science officer"
	selection_color = "#633d63"
	economic_modifier = 7
	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology, access_xenoarch)
	minimal_access = list(access_tox, access_tox_storage, access_research, access_xenoarch)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/scientist


/datum/job/doctor
	title = "Medical Doctor"
	department = "Medical"
	department_flag = MED
	faction = "Station"
	minimal_player_age = 3
	total_positions = 2
	spawn_positions = 2
	supervisors = "the science officer"
	selection_color = "#013d3b"
	economic_modifier = 7
	access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_chemistry, access_virology, access_genetics)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_virology)
	outfit_type = /decl/hierarchy/outfit/job/doctor


/datum/job/Paramedic
	title = "Medical Technician"
	department = "MedSci"
	department_flag = MED | SCI
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the science officer"
	selection_color = "#013d3b"
	economic_modifier = 4
	minimal_player_age = 7
	access = list(access_medical, access_medical_equip, access_morgue, access_surgery, access_chemistry, access_virology, access_eva, access_maint_tunnels, access_external_airlocks, access_psychiatrist)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_eva, access_maint_tunnels, access_external_airlocks)
	outfit_type = /decl/hierarchy/outfit/job/paramedic


/datum/job/roboticist
	title = "Roboticist"
	department = "MedSci"
	department_flag = SCI | MED
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the science officer"
	selection_color = "#633d63"
	economic_modifier = 5
	access = list(access_robotics, access_tox, access_tox_storage, access_tech_storage, access_morgue, access_research) //As a job that handles so many corpses, it makes sense for them to have morgue access.
	minimal_access = list(access_robotics, access_tech_storage, access_morgue, access_research) //As a job that handles so many corpses, it makes sense for them to have morgue access.
	minimal_player_age = 3
	outfit_type = /decl/hierarchy/outfit/job/roboticist


/datum/job/surveyor
	title = "Surveyor"
	department = "MedSci"
	department_flag = MED | SCI
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the science officer"
	selection_color = "#633d63"
	economic_modifier = 5
	access = list()
	minimal_access = list()
	outfit_type = /decl/hierarchy/outfit/job/assistant


//Services
/datum/job/qm
	title = "Quartermaster"
	department = "Cargo"
	department_flag = CIV
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the services officer"
	selection_color = "#515151"
	economic_modifier = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_player_age = 3
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/qm


/datum/job/assistant
	title = "Colonist"
	department = "Civilian"
	department_flag = CIV
	faction = "Station"
	total_positions = -1
	spawn_positions = -1
	supervisors = "the services officer"
	selection_color = "#515151"
	economic_modifier = 1
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit_type = /decl/hierarchy/outfit/job/assistant

/datum/job/assistant/get_access()
	if(config.assistant_maint)
		return list(access_maint_tunnels)
	else
		return list()



/datum/job/workingjoe
	title = "Working Joe"
	department_flag = MSC
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "your laws and the mission commander"
	selection_color = "#515151"
	minimal_player_age = 7
	account_allowed = 0
	economic_modifier = 0
	outfit_type = /decl/hierarchy/outfit/job/workingjoe

/datum/job/cyborg/equip(var/mob/living/carbon/human/H)
	if(!H)	return 0
	return 1

/datum/job/mining
	title = "Miner"
	department = "Cargo"
	department_flag = ENG
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the chief engineer"
	selection_color = "#515151"
	economic_modifier = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mining, access_mining_station)
	minimal_access = list(access_mining, access_mining_station, access_mailsorting)
	outfit_type = /decl/hierarchy/outfit/job/mining


//Engineering



/datum/job/engineer
	title = "Station Engineer"
	department = "Engineering"
	department_flag = ENG
	faction = "Station"
	total_positions = 8
	spawn_positions = 7
	supervisors = "the chief engineer"
	selection_color = "#5b4d20"
	economic_modifier = 5
	minimal_player_age = 7
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage)
	minimal_access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage)
	outfit_type = /decl/hierarchy/outfit/job/engineer

/datum/job/atmos
	title = "Atmospheric Technician"
	department = "Engineering"
	department_flag = ENG
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the chief engineer"
	selection_color = "#5b4d20"
	economic_modifier = 5
	minimal_player_age = 7
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage)
	minimal_access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage)
	outfit_type = /decl/hierarchy/outfit/job/atmosphere