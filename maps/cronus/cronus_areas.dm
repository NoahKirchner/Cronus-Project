// Command

/area/command/bridge
	name = "\improper Bridge"
	icon_state = "bridge"

/area/command/bridge/bridge_storage
	name = "\improper Bridge Secure Storage"
	icon_state = "armory"

/area/command/bridge/meeting_room
	name = "\improper Heads of Staff Meeting Room"
	icon_state = "bridge"
	ambience = list()
	sound_env = MEDIUM_SOFTFLOOR

/area/command/heads
	icon_state = "head_quarters"

/area/command/heads/missioncommander
	name = "\improper Mission Commander's Office"
	icon_state = "head_quarters"

/area/command/heads/colonialadmin
	name = "\improper Colonial Administrator's Office"
	icon_state = "head_quarters"

/area/command/heads/colonialmarshall
	name = "\improper Colonial Marshall's Office"
	icon_state = "head_quarters"

/area/command/heads/servicesofficer
	name = "\improper Service Officer's Office"
	icon_state = "head_quarters"

/area/command/heads/scienceofficer
	name = "\improper Science Officer's Office"
	icon_state = "head_quarters"

/area/command/heads/ce
	name = "\improper Chief Engineer's Office"
	icon_state = "head_quarters"


//MedSci

/area/medsci/common
	name = "\improper MedSci Hallway"
	icon_state = "red2"

/area/medsci/common/breakroom
	name = "\improper MedSci Breakroom"
	icon_state = "blue2"

/area/medsci/medical/biostorage
	name = "\improper Secondary Storage"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')

/area/medsci/medical/chemistry
	name = "\improper Chemistry"
	icon_state = "chem"

/area/medsci/medical/exam_room
	name = "\improper Exam Room"
	icon_state = "exam_room"

/area/medsci/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')

/area/medsci/medical/sleeper
	name = "\improper Emergency Treatment Centre"
	icon_state = "exam_room"

/area/medsci/medical/surgery
	name = "\improper Operating Room"
	icon_state = "surgery"

/area/medsci/medical/surgery2
	name = "\improper Operating Room 2"
	icon_state = "surgery"

/area/medsci/medical/cryo_control
	name = "\improper Cryogenics Control"
	icon_state = "medbay"

/area/medsci/medical/cryo
	name = "\improper Cryogenics"
	icon_state = "medbay2"

/area/medsci/medical/cloning
	name = "\improper Cloning Lab"
	icon_state = "medbay3"

/area/medsci/rnd/robotics
	name = "\improper Robotics Lab"
	icon_state = "robotics"

/area/medsci/rnd/lab
	name = "\improper Research Lab"
	icon_state = "toxlab"

/area/medsci/rnd/main
	name = "\improper Research and Development"
	icon_state = "research"
/area/medsci/rnd/rndlab
	name = "\improper R&D Lab"
	icon_state = "toxmisc"

// Security

/area/marshallservice/lobby
	name = "\improper Colonial Marshal's Bureau"
	icon_state = "security"

/area/marshallservice/meetingroom
	name = "\improper Briefing Room"
	icon_state = "security"

/area/marshallservice/officerdorms
	name = "\improper Deputy Marshal's Dorms"
	icon_state = "security"

/area/marshallservice/armoury
	name = "\improper Armory"
	icon_state = "armory"

/area/marshallservice/detectives_office
	name = "\improper Forensics Office"
	icon_state = "detective"

/area/marshallservice/brig
	name = "\improper Jail Area"
	icon_state = "brig"
/area/marshallservice/brig/cell1
	name = "\improper Cell 1"
	icon_state = "brig"

/area/marshallservice/brig/cell2
	name = "\improper Cell 2"
	icon_state = "brig"

/area/marshallservice/brig/solitary
	name = "\improper Solitary Confinement"
	icon_state = "brig"



// Service

/area/services/cargobay/cargooffice
	name = "\improper Cargo Bay"
	icon_state = "quartoffice"

/area/services/cargobay/hangar
	name = "\improper Cargo Bay - Hangar"
	icon_state = "quart"

/area/services/cargobay/lobby
	name = "\improper Cargo Bay - Lobby"
	icon_state = "quart"



// Common
/area/common/hallway/starboard
	name = "\improper Primary Hallway - Starboard"
	icon_state = "hallS"

/area/common/hallway/port
	name = "\improper Primary Hallway - Port"
	icon_state = "hallP"

/area/common/hallway/fore
	name = "\improper Primary Hallway - Fore"
	icon_state = "hallF"

/area/common/hallway/aft
	name = "\improper Primary Hallway - Aft"
	icon_state = "hallA"

/area/common/washroom
	name = "\improper Cronus Bathrooms"
	icon_state = "toilet"

/area/common/dorm
	name = "\improper Cronus Dormitories"
	icon_state = "crew_quarters"

/area/common/hangar
	name = "Cronus Hangar"
	icon_state = "exit"

// Engineering

/area/engineering/engineerdorms
	name = "\improper Engineering Dormitories"
	icon_state = "engineering_break"

/area/engineering/breakroom
	name = "\improper Engineering Break Room"
	icon_state = "engineering_break"

/area/engineering/tcomms
	name = "\improper Telecommunications"
	icon_state = "tcomm"

/area/engineering/powerstorage
	name = "Cronus Power Storage"
	icon_state = "law"








// Maintenance

/area/maintenance/tunnels
	flags = RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	name = "\improper Starboard Maintenance Tunnel"
	icon_state = "smaint"

/area/maintenance/tunnelp
	flags = RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	name = "\improper Port Maintenance Tunnel"
	icon_state = "pmaint"

/area/maintenance/storage
	flags = RAD_SHIELDED
	name = "Maintenance Storage"
	icon_state = "auxstorage"

/area/maintenance/disposal
	name = "Waste Disposal"
	icon_state = "disposal"

// Storage

/area/storage/primary
	name = "Primary Tool Storage"
	icon_state = "primarystorage"

/area/storage/tech
	name = "Technical Storage"
	icon_state = "auxstorage"

/area/storage/tools
	name = "Auxiliary Tool Storage"
	icon_state = "storage"

// Engineering

/area/engineering/atmos/storage
	name = "\improper Atmospherics Storage"
	icon_state = "atmos_storage"
	sound_env = SMALL_ENCLOSED

/area/engineering/engine_room
	name = "\improper Engine Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED

/area/engineering/drone_fabrication
	name = "\improper Engineering Drone Fabrication"
	icon_state = "drone_fab"
	sound_env = SMALL_ENCLOSED

/area/engineering/engine_eva
	name = "\improper Engine EVA"
	icon_state = "engine_eva"

/area/engineering/engine_monitoring
	name = "\improper Engine Monitoring Room"
	icon_state = "engine_monitoring"

/area/engineering/engine_smes
	name = "\improper Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED

/area/engineering/engineering_monitoring
	name = "\improper Engineering Monitoring Room"
	icon_state = "engine_monitoring"

/area/engineering/foyer
	name = "\improper Engineering Foyer"
	icon_state = "engineering_foyer"

/area/engineering/locker_room
	name = "\improper Engineering Locker Room"
	icon_state = "engineering_locker"

/area/engineering/storage
	name = "\improper Engineering Storage"
	icon_state = "engineering_storage"

// Cargo
/area/quartermaster/office
	name = "\improper Supply Office"
	icon_state = "quartoffice"

/area/quartermaster/storage
	name = "\improper Warehouse"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

// Crew

/area/crew_quarters/locker
	name = "\improper Locker Room"
	icon_state = "locker"

/area/crew_quarters/sleep/cryo
	name = "\improper Cryogenic Storage"
	icon_state = "Sleep"

/area/hydroponics
	name = "\improper Hydroponics"
	icon_state = "hydro"

/area/janitor
	name = "\improper Custodial Closet"
	icon_state = "janitor"

