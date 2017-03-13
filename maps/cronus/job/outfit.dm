/decl/hierarchy/outfit/job
	name = "Standard Gear"
	hierarchy_type = /decl/hierarchy/outfit/job

	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/black

	id_slot = slot_wear_id
	id_type = /obj/item/weapon/card/id/civilian
	pda_slot = slot_belt
	pda_type = /obj/item/device/pda

	flags = OUTFIT_HAS_BACKPACK

/decl/hierarchy/outfit/job/equip_id(mob/living/carbon/human/H)
	var/obj/item/weapon/card/id/C = ..()
	if(H.mind)
		if(H.mind.initial_account)
			C.associated_account_number = H.mind.initial_account.account_number
	return C



// Command
/decl/hierarchy/outfit/job/mco
	name = OUTFIT_JOB_NAME("Mission Commander")	//Captain
	head = /obj/item/clothing/head/caphat
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/rank/captain
	l_ear = /obj/item/device/radio/headset/heads/captain
	shoes = /obj/item/clothing/shoes/brown
	backpack = /obj/item/weapon/storage/backpack/captain
	satchel_one = /obj/item/weapon/storage/backpack/satchel_cap
	id_type = /obj/item/weapon/card/id/gold
	pda_type = /obj/item/device/pda/captain
	backpack_contents = list(/obj/item/weapon/storage/box/ids = 1)
	messenger_bag = /obj/item/weapon/storage/backpack/messenger/com

/decl/hierarchy/outfit/job/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	if(H.age>49)
		// Since we can have something other than the default uniform at this
		// point, check if we can actually attach the medal
		var/obj/item/clothing/uniform = H.w_uniform
		if(uniform)
			var/obj/item/clothing/accessory/medal/gold/nanotrasen/medal = new()
			if(uniform.can_attach_accessory(medal))
				uniform.attach_accessory(null, medal)
			else
				qdel(medal)

/decl/hierarchy/outfit/job/ca
	name = OUTFIT_JOB_NAME("Colonial Administrator") //HoP
	uniform = /obj/item/clothing/under/rank/head_of_personnel
	l_ear = /obj/item/device/radio/headset/heads/headset_ca
	shoes = /obj/item/clothing/shoes/brown
	id_type = /obj/item/weapon/card/id/silver
	pda_type = /obj/item/device/pda/heads/hop
	backpack_contents = list(/obj/item/weapon/storage/box/ids = 1)

/decl/hierarchy/outfit/job/chief_engineer
	name = OUTFIT_JOB_NAME("Chief engineer")
	head = /obj/item/clothing/head/hardhat/white
	uniform = /obj/item/clothing/under/rank/chief_engineer
	l_ear = /obj/item/device/radio/headset/heads/headset_ce
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/weapon/card/id/engineering/head
	pda_type = /obj/item/device/pda/heads/ce

/decl/hierarchy/outfit/job/cm
	l_ear = /obj/item/device/radio/headset/heads/headset_marshal

/decl/hierarchy/outfit/job/sci_o
	l_ear = /obj/item/device/radio/headset/heads/headset_scio

/decl/hierarchy/outfit/job/serv_o
	l_ear = /obj/item/device/radio/headset/heads/headset_servo

/decl/hierarchy/outfit/job/workingjoe


/decl/hierarchy/outfit/job/pilot
	l_ear = /obj/item/device/radio/headset/headset_com

/decl/hierarchy/outfit/job/bridge_crew
	l_ear = /obj/item/device/radio/headset/headset_com

/decl/hierarchy/outfit/job/detective
	l_ear = /obj/item/device/radio/headset/headset_sec

/decl/hierarchy/outfit/job/officer
	l_ear = /obj/item/device/radio/headset/headset_sec

/decl/hierarchy/outfit/job/scientist
	l_ear = /obj/item/device/radio/headset/headset_sci

/decl/hierarchy/outfit/job/doctor
	l_ear = /obj/item/device/radio/headset/headset_med

/decl/hierarchy/outfit/job/paramedic
	l_ear = /obj/item/device/radio/headset/headset_med

/decl/hierarchy/outfit/job/roboticist
	l_ear = /obj/item/device/radio/headset/headset_sci

/decl/hierarchy/outfit/job/surveyor
	l_ear = /obj/item/device/radio/headset/headset_surv

/decl/hierarchy/outfit/job/qm
	l_ear = /obj/item/device/radio/headset/headset_cargo

/decl/hierarchy/outfit/job/colonist
	l_ear = /obj/item/device/radio/headset/headset_colonist

/decl/hierarchy/outfit/job/mining
	l_ear = /obj/item/device/radio/headset/headset_mining

/decl/hierarchy/outfit/job/engineer
	l_ear = /obj/item/device/radio/headset/headset_eng

/decl/hierarchy/outfit/job/silicon/ai

/decl/hierarchy/outfit/job/atmosphere
	l_ear = /obj/item/device/radio/headset/headset_eng

/decl/hierarchy/outfit/job/assistant
















