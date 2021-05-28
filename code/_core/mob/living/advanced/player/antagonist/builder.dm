/mob/living/advanced/player/antagonist/builder
	loadout_to_use = /loadout/syndicate/builder

/mob/living/advanced/player/antagonist/builder/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/syndicate)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/syndicate)
	return.

/mob/living/advanced/player/antagonist/builder/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","� ������� �� ����� ������ ���������. � ����� ��������� ��� ����� �� ���������...�������."))
	to_chat(span("danger","��������� ��� ����� � ������, � ����� ����������� ���� � �����-������� ������ �� ������ �������������."))
	return .

/mob/living/advanced/player/antagonist/builder/setup_name()
	. = ..()
	name = "Operative Builder"
	return TRUE


/mob/living/advanced/player/antagonist/builder/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_CODESPEAK] = TRUE
	return .