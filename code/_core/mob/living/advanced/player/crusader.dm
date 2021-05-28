/mob/living/advanced/player/nt/crusader
	loadout_to_use = /loadout/nt/player_crusader

/mob/living/advanced/player/nt/crusader/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/nanotrasen)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/nanotrasen)
	return.

/mob/living/advanced/player/nt/crusader/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","�� - ������� ����� ������. ����, ��������� ������� ����. ��������� ����� ����������, ��������� ���������� ������� � ������."))
	to_chat(span("danger","������� � �������, �� �������, ��� �� ��������� ������ ������� ���� ����� �������������."))
	return .

/mob/living/advanced/player/nt/crusader/setup_name()
	. = ..()
	name = "Operative Crusader"
	return TRUE

/mob/living/advanced/player/nt/crusader/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_RUSSIAN] = TRUE
	return .
