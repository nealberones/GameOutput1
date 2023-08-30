extends Control

func togglemainbuttons():
	get_node("AttackMenuButton").disabled = not get_node("AttackMenuButton").disabled
	get_node("MagicMenuButton").disabled = not get_node("MagicMenuButton").disabled
	get_node("DefendMenuButton").disabled = not get_node("DefendMenuButton").disabled

func togglemagicbuttons():
	get_node("MagicMenuContainer/Offense").disabled = not get_node("MagicMenuContainer/Offense").disabled
	get_node("MagicMenuContainer/Defense").disabled = not get_node("MagicMenuContainer/Defense").disabled
	get_node("MagicMenuContainer/MagicMenuBack").disabled = not get_node("MagicMenuContainer/MagicMenuBack").disabled


func _on_attack_menu_button_pressed():
	$AnimationPlayer.play("popup")
	togglemainbuttons()

func _on_back_pressed():
	$AnimationPlayer.play_backwards("popup")
	togglemainbuttons()

func _on_magic_menu_button_pressed():
	$AnimationPlayer.play("magicpopup")
	togglemainbuttons()

func _on_magic_menu_back_pressed():
	$AnimationPlayer.play_backwards("magicpopup")
	togglemainbuttons()

func _on_offense_pressed():
	$AnimationPlayer.play("offensepopup")
	togglemagicbuttons()

func _on_offense_menu_back_pressed():
	$AnimationPlayer.play_backwards("offensepopup")
	togglemagicbuttons()
