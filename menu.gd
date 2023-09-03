extends Control

func togglemainbuttons():
	get_node("AttackMenuButton").disabled = not get_node("AttackMenuButton").disabled
	get_node("MagicMenuButton").disabled = not get_node("MagicMenuButton").disabled
	get_node("DefendMenuButton").disabled = not get_node("DefendMenuButton").disabled

func togglemagicbuttons():
	get_node("MagicMenuContainer/Offense").disabled = not get_node("MagicMenuContainer/Offense").disabled
	get_node("MagicMenuContainer/Defense").disabled = not get_node("MagicMenuContainer/Defense").disabled
	get_node("MagicMenuContainer/MagicMenuBack").disabled = not get_node("MagicMenuContainer/MagicMenuBack").disabled

func toggleaoebuttons():
	get_node("OffenseMenu/Leap").disabled = not get_node("OffenseMenu/Leap").disabled
	get_node("OffenseMenu/Tesla Shot").disabled = not get_node("OffenseMenu/Tesla Shot").disabled
	get_node("OffenseMenu/Single Target").disabled = not get_node("OffenseMenu/Single Target").disabled

func togglesinglebuttons():
	get_node("OffenseMenu/Tesla Cannon").disabled = not get_node("OffenseMenu/Tesla Cannon").disabled
	get_node("OffenseMenu/Primal Rage").disabled = not get_node("OffenseMenu/Primal Rage").disabled
	get_node("OffenseMenu/AOE").disabled = not get_node("OffenseMenu/AOE").disabled

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

func _on_axe_kick_toggled(button_pressed):
	if button_pressed==true:
		$AtkMenuContainer/Jab.disabled = true
		$AtkMenuContainer/Straight.disabled = true
		$AtkMenuContainer/Cross.disabled = true
		$AtkMenuContainer/Grapple.disabled = true
		$AtkMenuContainer/Confirm.disabled = false

func _on_roundhouse_kick_toggled(button_pressed):
	if button_pressed==true:
		$AtkMenuContainer/Jab.disabled = true
		$AtkMenuContainer/Straight.disabled = true
		$AtkMenuContainer/Cross.disabled = true
		$AtkMenuContainer/Grapple.disabled = true
		$AtkMenuContainer/Confirm.disabled = false

func _on_reset_pressed():
	$AtkMenuContainer/Jab.disabled = false
	$AtkMenuContainer/Straight.disabled = false
	$AtkMenuContainer/Cross.disabled = false
	$AtkMenuContainer/Grapple.disabled = false
	$"AtkMenuContainer/Roundhouse Kick".disabled = false
	$"AtkMenuContainer/Axe Kick".disabled = false
	$AtkMenuContainer/Confirm.disabled = true


func _on_straight_toggled(button_pressed):
	$"AtkMenuContainer/Roundhouse Kick".disabled = true
	$"AtkMenuContainer/Axe Kick".disabled = true
	$AtkMenuContainer/Grapple.disabled = true
	$AtkMenuContainer/Confirm.disabled = false

func _on_jab_toggled(button_pressed):
	$"AtkMenuContainer/Roundhouse Kick".disabled = true
	$"AtkMenuContainer/Axe Kick".disabled = true
	$AtkMenuContainer/Grapple.disabled = true
	$AtkMenuContainer/Confirm.disabled = false

func _on_cross_toggled(button_pressed):
	$"AtkMenuContainer/Roundhouse Kick".disabled = true
	$"AtkMenuContainer/Axe Kick".disabled = true
	$AtkMenuContainer/Grapple.disabled = true
	$AtkMenuContainer/Confirm.disabled = false
	

func _on_grapple_toggled(button_pressed):
	$"AtkMenuContainer/Roundhouse Kick".disabled = true
	$"AtkMenuContainer/Axe Kick".disabled = true
	$AtkMenuContainer/Jab.disabled = false
	$AtkMenuContainer/Straight.disabled = false
	$AtkMenuContainer/Cross.disabled = false
	$AtkMenuContainer/Confirm.disabled = false


func _on_single_target_toggled(button_pressed):
	togglesinglebuttons()


func _on_aoe_toggled(button_pressed):
	toggleaoebuttons()
