/mob/living/advanced/player/nt/sledge
	loadout_to_use = /loadout/nt/sledge

/mob/living/advanced/player/nt/sledge/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/nanotrasen)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/nanotrasen)
	return.

/mob/living/advanced/player/nt/sledge/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","��������� � �������� �� ���������� ���������. ����������� ����� ���� �� ��."))
	to_chat(span("danger","�������� ����� ���� ������ BWOINK - ��������� � ������ ��, ��� ������ ����� - �� ��� �� ��� ���� ������ � ����� ����������?"))
	return .

/mob/living/advanced/player/nt/sledge/setup_name()
	. = ..()
	name = "Operative Sledge"
	return TRUE

/mob/living/advanced/player/nt/sledge/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_RUSSIAN] = TRUE
	return .