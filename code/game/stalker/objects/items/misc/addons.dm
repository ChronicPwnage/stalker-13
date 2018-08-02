/obj/item/weapon/attachment
	icon = 'icons/stalker/weapon_mods.dmi'
	var/list/types = list()
	w_class = 2

/obj/item/weapon/attachment/suppressor
	name = "suppressor"
	desc = "A universal suppressor."
	icon = 'icons/obj/guns/projectile.dmi'
	icon_state = "suppressor"
	types = list(/obj/item/weapon/gun/projectile/automatic/pistol/pm,
	 /obj/item/weapon/gun/projectile/automatic/pistol/fort12,
	  /obj/item/weapon/gun/projectile/automatic/pistol/marta,
	   /obj/item/weapon/gun/projectile/automatic/pistol/sip,
	    /obj/item/weapon/gun/projectile/automatic/pistol/cora,
	     /obj/item/weapon/gun/projectile/automatic/pistol/usp_match,
	      /obj/item/weapon/gun/projectile/automatic/mp5,
	       /obj/item/weapon/gun/projectile/automatic/groza,
	        /obj/item/weapon/gun/projectile/automatic/ak74,
	         /obj/item/weapon/gun/projectile/automatic/aksu74,
	          /obj/item/weapon/gun/projectile/automatic/abakan,
	           /obj/item/weapon/gun/projectile/automatic/tpc301)
	var/oldsound = null
	var/initial_w_class = null

/obj/item/weapon/attachment/scope
	name = "scope"
	desc = "A universal scope."
	icon = 'icons/stalker/weapon_mods.dmi'
	icon_state = "susat"
	var/zoom_add = 2

/obj/item/weapon/attachment/scope/SUSAT
	name = "SUSAT"
	desc = "���������� ������ ������������� ��������� (4 ��������). ���� ����� �����������&#255; ��&#255; ������&#255; ����������� ���&#255; �� ������ ����������� �����&#255; �� ������� � ������� ���������. ��������������&#255; �� ������ ���������."
	eng_desc = "A 4x fixed zoom scope produced primarily in Western countries. Attached to weapons by means of the NATO-standard Picatinny rail. Often used for accurate fire from small arms at medium to long range."
	icon = 'icons/stalker/weapon_mods.dmi'
	icon_state = "susat"
	types = list(/obj/item/weapon/gun/projectile/automatic/tpc301,
					 /obj/item/weapon/gun/projectile/automatic/mp5)
	zoom_add = 3

/obj/item/weapon/attachment/scope/PS
	types = list(/obj/item/weapon/gun/projectile/automatic/aksu74,
				 /obj/item/weapon/gun/projectile/automatic/ak74,
				 /obj/item/weapon/gun/projectile/automatic/abakan,
				 /obj/item/weapon/gun/projectile/automatic/val,
				 /obj/item/weapon/gun/projectile/automatic/groza)
	zoom_add = 2

/obj/item/weapon/attachment/scope/PS/U1
	name = "PSU-1"
	desc = "���������� ������ ������������� ��������� (2,7 ��������). ������������� ��&#255; ��&#255; �� ������� ��������&#255;�, � ����� ��&#255; ������������&#255; � ������&#255;� ��������� ���������. ��&#255; ��������� �� ������ �����������&#255; ����������� � ������� ����������� �������� ��������� ���� ���������� �����."
	icon_state = "PSU1"
	types = list(/obj/item/weapon/gun/projectile/automatic/aksu74,
				/obj/item/weapon/gun/projectile/automatic/ak74,
				/obj/item/weapon/gun/projectile/automatic/abakan,
				/obj/item/weapon/gun/projectile/automatic/val,
				/obj/item/weapon/gun/projectile/automatic/groza)
	zoom_add = 2

/obj/item/weapon/attachment/scope/PS/O1
	name = "PSO-1"
	desc = "������ ���������������� ���������� ������ ���������� ������������ ������������� ��������� (5). ������� ������ ��&#255; ����������&#255; ��������� �� ����. ��&#255; ��������� �� ������ �����������&#255; ����������� � ������� ����������� �������� ��������� ���� ���������� �����."
	icon_state = "PSO1"
	types = list(/obj/item/weapon/gun/projectile/automatic/aksu74,
				 /obj/item/weapon/gun/projectile/automatic/ak74,
				 /obj/item/weapon/gun/projectile/automatic/abakan,
				 /obj/item/weapon/gun/projectile/automatic/val,
				 /obj/item/weapon/gun/projectile/automatic/groza)
	zoom_add = 4

/obj/item/weapon/attachment/scope/fnf2000
	name = "FN-F2000 scope"
	desc = "������ ��&#255; �������� FN-F2000."
	icon_state = "fnf2000-scope"
	types = list(/obj/item/weapon/gun/projectile/automatic/fnf2000)

/obj/item/weapon/attachment/grenadelauncher
	name = "grenade launcher"
	desc = "������������ ���������."
	icon_state = ""
	types = list()

/obj/item/weapon/attachment/grenadelauncher/fnf2000
	name = "fn-f2000 grenade launcher"
	desc = "������������ ��������� ��� fn-f2000"
	icon_state = "fnf2000-gl"