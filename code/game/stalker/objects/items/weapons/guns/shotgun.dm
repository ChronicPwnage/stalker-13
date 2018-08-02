/obj/item/weapon/gun/projectile/revolver/bm16  // ������������
	name = "BM-16"
	desc = "��������� ����� - ������������. �������� ������, � ����� ��� ��&#255; �����."
	eng_desc = "The original Bm16 rifle. Heavy and dangerous two barrel rifle, and its effective in high range too."
	icon_state = "bm16"
	item_state = "bm16"
	w_class = 4
	force = 15
	flags = CONDUCT
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/stalker/bm16
	recoil = 1
	durability = 150
	sawn_desc = "����������� ���������� � ����� ����� ����������, �� ���������� ������ � ������� ���. ���� �� ����� ���������������� ����� �����&#255; � ��������."
	randomspread = 0
	spread = 12
	damagelose = 0.3
	distro = 25
	fire_sound = 'sound/stalker/weapons/bm16_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/obrez_load.ogg'
	opensound = 'sound/stalker/weapons/unload/obrez_open.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

/obj/item/weapon/gun/projectile/revolver/bm16/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/ammo_box) || istype(A, /obj/item/ammo_casing))
		//playsound(user, loadsound, 50, 1)
		chamber_round()
	if(istype(A, /obj/item/weapon/melee/energy))
		var/obj/item/weapon/melee/energy/W = A
		if(W.active)
			sawoff(user)
	if(istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/gun/energy/plasmacutter))
		sawoff(user)

/obj/item/weapon/gun/projectile/revolver/bm16/attack_self(mob/living/user)
	var/num_unloaded = 0
	while (get_ammo() > 0)
		var/obj/item/ammo_casing/CB
		CB = magazine.get_round(0)
		chambered = null
		CB.loc = get_turf(src.loc)
		CB.update_icon()
		num_unloaded++
	if (num_unloaded)
		playsound(user, opensound, 50, 1)
		user << "<span class='notice'>You break open \the [src] and unload [num_unloaded] shell\s.</span>"
	else
		user << "<span class='warning'>[src] is empty!</span>"

/obj/item/weapon/gun/projectile/revolver/bm16/toz34  //  ����������
	name = "TOZ-34"
	desc = "�������������� ������������ ��������� ����� � ����������� �������������� ��������. ������ ���������������� � ����� ����� �� �������������� ��������� ����� - '����������'."
	eng_desc = "This extremely common over-and-under hunting shotgun can offer better protection against mutants than a pistol, thanks to its accuracy and stopping power. Used mostly by rookies on the outskirts of the Zone."
	icon_state = "toz34"
	item_state = "toz34"
	recoil = 0.6
	force = 15
	durability = 150
	spread = 6
	damagelose = 0.15
	distro = 10

/obj/item/weapon/gun/projectile/shotgun/chaser  //  Winchester 1300
	name = "Chaser-13"
	desc = "��������������� �������� ����� ������������� ������������, ��������� ��&#255; ���������&#255; � ����� ����������&#255;���� ������&#255;� � �����������&#255; ������� ����������. ��� ������ �������� ��������������� ���������."
	eng_desc = "A Western smoothbore shotgun that is extremely popular around the world thanks to its amazing reliability and faster reloading speed. Particularly valued for its functionality by the Zone's hunters. All of its parts are coated with an anticorrosion compound."
	icon_state = "chaser"
	item_state = "chaser"
	durability = 100
	slot_flags = SLOT_BELT|SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/chaser
	recoil = 0.8
	w_class = 4
	randomspread = 0
	spread = 10
	force = 15
	damagelose = 0.3
	distro = 16
	//fire_sound = 'sound/stalker/weapons/winchester1300_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/chaser_load.ogg'
	pumpsound = 'sound/stalker/weapons/pump/chaser_pump.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'

/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff
	name = "sawed-off BM-16"
	desc = "����������� ���������� � ����� ����� ����������, �� ���������� ������ � ������� ���. ���� �� ����� ���������������� ����� �����&#255; � ��������."
	eng_desc = "A sawed-off hunting shotgun with two side-by-side barrels, making it lighter and more compact than a full shotgun. One of the most popular weapons among bandits due to its combination of ease of concealment and extreme effectiveness in close combat."
	sawn_state = SAWN_OFF
	item_state = "gun"
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = 3
	durability = 75
	force = 15
	spread = 20
	recoil = 2.5
	damagelose = 0.45
	distro = 35

/obj/item/weapon/gun/projectile/revolver/bm16/sawnoff/New()
	..()
	update_icon()

/obj/item/weapon/gun/projectile/shotgun/spsa
	name = "SPAS-12"
	desc = "��������������� �������������� �������� ������������ ���������&#255; � ������������ �����������&#255; ������� ������&#255; ���&#255;. ������������� ��� �� ������ �������� �� �������&#255;, ���������� ������&#255;���&#255; � �������� �������������� ������� �����&#255; ������� � ��������� ������������� �����. ���������&#255; ������� ���������� � ����������� ���������. �������&#255; �� ������� �����, ������� ���������� � ������� ����, �������� �����&#255;��� � ���� ��� ����������� �������� ������ ������ ��������."
	eng_desc = "This special purpose smoothbore automatic shotgun was designed in the second half of the 20th century and comes with pump-action and self-cocking firing modes. Used as an all-purpose weapon by the police and assault troops. Notable for its reliability and tactical flexibility. Despite its large weight, complex mechanism and considerable cost it is in demand in the Zone due to its effectiveness against mutants."
	icon_state = "spsa"	//����� ��������
	item_state = "spsa" //����� ��������
	durability = 150
	slot_flags = SLOT_BACK
	mag_type = /obj/item/ammo_box/magazine/internal/shot/spsa
	recoil = 0.6
	w_class = 4
	randomspread = 0
	spread = 8
	force = 15
	damagelose = 0.35
	distro = 12
	fire_sound = 'sound/stalker/weapons/spsa_shot.ogg'
	loadsound = 'sound/stalker/weapons/load/spsa_load.ogg'
	pumpsound = 'sound/stalker/weapons/pump/spsa_pump.ogg'
	drawsound = 'sound/stalker/weapons/draw/shotgun_draw.ogg'
