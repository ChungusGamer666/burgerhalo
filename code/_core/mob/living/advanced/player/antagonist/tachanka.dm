/mob/living/advanced/player/antagonist/tachanka
	loadout_to_use = /loadout/syndicate/tachanka

/mob/living/advanced/player/antagonist/tachanka/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/syndicate)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/syndicate)
	return.

/mob/living/advanced/player/antagonist/tachanka/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","����� ���� ������� � ������������ � ������� ����������������� ������ - ������ ��� ����."))
	to_chat(span("danger","����� ���� ���, ����� �� ��� ��� ��� ��������� ����� - ����� ���������. ������������� ��������� ������� ��������� ���� �� ����������."))
	return .

/mob/living/advanced/player/antagonist/tachanka/setup_name()
	. = ..()
	name = "Operative Tachanka"
	return TRUE


/mob/living/advanced/player/antagonist/tachanka/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_CODESPEAK] = TRUE
	return .