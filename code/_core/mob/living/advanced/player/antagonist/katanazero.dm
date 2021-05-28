/mob/living/advanced/player/antagonist/katanazero
	loadout_to_use = /loadout/syndicate/katanazero

/mob/living/advanced/player/antagonist/katanazero/default_appearance()
	. = ..()
	src.add_organ(/obj/item/organ/internal/implant/hand/left/iff/syndicate)
	src.add_organ(/obj/item/organ/internal/implant/head/loyalty/syndicate)
	return.

/mob/living/advanced/player/antagonist/katanazero/prepare()
	. = ..()
	name = "[gender == MALE ? FIRST_NAME_MALE : FIRST_NAME_FEMALE] [LAST_NAME]"
	setup_name()
	to_chat(span("danger","������� ����! �� ��� �� ��� �������� ��� ������ � �������� ��������� ������?"))
	to_chat(span("danger","���� �� ������ ����� �����, �� � �� �� ����� ����������� ����� - �� ��� �����. ������� �� �������� ������, � ������ �������� �� ������ ��� ��������, ������� �����."))
	return .

/mob/living/advanced/player/antagonist/katanazero/setup_name()
	. = ..()
	name = "Operative BladeMaster"
	return TRUE


/mob/living/advanced/player/antagonist/katanazero/add_species_languages()
	. = ..()
	known_languages[LANGUAGE_CODESPEAK] = TRUE
	return .