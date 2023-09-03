extends Control

func togglemainbuttons():
	get_node("AttackMenuButton").disabled = not get_node("AttackMenuButton").disabled
	get_node("MagicMenuButton").disabled = not get_node("MagicMenuButton").disabled
	get_node("DefendMenuButton").disabled = not get_node("DefendMenuButton").disabled

func togglemagicbuttons():
	get_node("MagicMenuPanel/MagicMenuContainer/Offense").disabled = not get_node("MagicMenuPanel/MagicMenuContainer/Offense").disabled
	get_node("MagicMenuPanel/MagicMenuContainer/Defense").disabled = not get_node("MagicMenuPanel/MagicMenuContainer/Defense").disabled
	get_node("MagicMenuPanel/MagicMenuContainer/MagicMenuBack").disabled = not get_node("MagicMenuPanel/MagicMenuContainer/MagicMenuBack").disabled

func toggleaoebuttons():
	get_node("OffenseMenuPanel/OffenseMenu/Leap").disabled = not get_node("OffenseMenuPanel/OffenseMenu/Leap").disabled
	get_node("OffenseMenuPanel/OffenseMenu/Tesla Shot").disabled = not get_node("OffenseMenuPanel/OffenseMenu/Tesla Shot").disabled
	get_node("OffenseMenuPanel/OffenseMenu/Single Target").disabled = not get_node("OffenseMenuPanel/OffenseMenu/Single Target").disabled

func togglesinglebuttons():
	get_node("OffenseMenuPanel/OffenseMenu/Tesla Cannon").disabled = not get_node("OffenseMenuPanel/OffenseMenu/Tesla Cannon").disabled
	get_node("OffenseMenuPanel/OffenseMenu/Primal Rage").disabled = not get_node("OffenseMenuPanel/OffenseMenu/Primal Rage").disabled
	get_node("OffenseMenuPanel/OffenseMenu/AOE").disabled = not get_node("OffenseMenuPanel/OffenseMenu/AOE").disabled

func disabletargettingbuttons():
	get_node("OffenseMenuPanel/OffenseMenu/Tesla Cannon").disabled = true
	get_node("OffenseMenuPanel/OffenseMenu/Primal Rage").disabled =true
	get_node("OffenseMenuPanel/OffenseMenu/AOE").disabled = true
	get_node("OffenseMenuPanel/OffenseMenu/Leap").disabled = true
	get_node("OffenseMenuPanel/OffenseMenu/Tesla Shot").disabled = true
	get_node("OffenseMenuPanel/OffenseMenu/Single Target").disabled = true
	get_node("OffenseMenuPanel/OffenseMenu/OffenseMenuBack").disabled = true

func enabletargettingbuttons():
	get_node("OffenseMenuPanel/OffenseMenu/Tesla Cannon").disabled = false
	get_node("OffenseMenuPanel/OffenseMenu/Primal Rage").disabled =false
	get_node("OffenseMenuPanel/OffenseMenu/AOE").disabled = false
	get_node("OffenseMenuPanel/OffenseMenu/Leap").disabled = false
	get_node("OffenseMenuPanel/OffenseMenu/Tesla Shot").disabled = false
	get_node("OffenseMenuPanel/OffenseMenu/Single Target").disabled = false
	get_node("OffenseMenuPanel/OffenseMenu/OffenseMenuBack").disabled = false

func _on_attack_menu_button_pressed():
	$AnimationPlayer.play("popup")
	$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = true
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
		$AtkMenuPanel/AtkMenuContainer/Jab.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Straight.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Cross.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Grapple.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = false
	else:
		if get_node("AtkMenuPanel/AtkMenuContainer/Roundhouse Kick").button_pressed == true:
			pass
		else:
			$AtkMenuPanel/AtkMenuContainer/Jab.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Straight.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Cross.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Grapple.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = true

func _on_roundhouse_kick_toggled(button_pressed):
	if button_pressed==true:
		$AtkMenuPanel/AtkMenuContainer/Jab.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Straight.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Cross.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Grapple.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = false
	else:
		if get_node("AtkMenuPanel/AtkMenuContainer/Axe Kick").button_pressed == true:
			pass
		else:
			$AtkMenuPanel/AtkMenuContainer/Jab.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Straight.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Cross.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Grapple.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = true

func _on_straight_toggled(button_pressed):
	if button_pressed:
		$"AtkMenuPanel/AtkMenuContainer/Roundhouse Kick".disabled = true
		$"AtkMenuPanel/AtkMenuContainer/Axe Kick".disabled = true
		$AtkMenuPanel/AtkMenuContainer/Grapple.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = false
	else:
		if get_node("AtkMenuPanel/AtkMenuContainer/Jab").button_pressed or get_node("AtkMenuContainer/Cross").button_pressed == true:
			pass
		else:
			$"AtkMenuPanel/AtkMenuContainer/Roundhouse Kick".disabled = false
			$"AtkMenuPanel/AtkMenuContainer/Axe Kick".disabled = false
			$AtkMenuPanel/AtkMenuContainer/Grapple.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = true
		

func _on_jab_toggled(button_pressed):
	if button_pressed:
		$"AtkMenuPanel/AtkMenuContainer/Roundhouse Kick".disabled = true
		$"AtkMenuPanel/AtkMenuContainer/Axe Kick".disabled = true
		$AtkMenuPanel/AtkMenuContainer/Grapple.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = false
	else:
		if get_node("AtkMenuPanel/AtkMenuContainer/Straight").button_pressed or get_node("AtkMenuPanel/AtkMenuContainer/Cross").button_pressed == true:
			pass
		else:
			$"AtkMenuPanel/AtkMenuContainer/Roundhouse Kick".disabled = false
			$"AtkMenuPanel/AtkMenuContainer/Axe Kick".disabled = false
			$AtkMenuPanel/AtkMenuContainer/Grapple.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = true

func _on_cross_toggled(button_pressed):
	if button_pressed:
		$"AtkMenuPanel/AtkMenuContainer/Roundhouse Kick".disabled = true
		$"AtkMenuPanel/AtkMenuContainer/Axe Kick".disabled = true
		$AtkMenuPanel/AtkMenuContainer/Grapple.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = false
	else:
		if get_node("AtkMenuPanel/AtkMenuContainer/Straight").button_pressed or get_node("AtkMenuPanel/AtkMenuContainer/Jab").button_pressed == true:
			pass
		else:
			$"AtkMenuPanel/AtkMenuContainer/Roundhouse Kick".disabled = false
			$"AtkMenuPanel/AtkMenuContainer/Axe Kick".disabled = false
			$AtkMenuPanel/AtkMenuContainer/Grapple.disabled = false
			$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = true
	

func _on_grapple_toggled(button_pressed):
	if button_pressed:
		$"AtkMenuPanel/AtkMenuContainer/Roundhouse Kick".disabled = true
		$"AtkMenuPanel/AtkMenuContainer/Axe Kick".disabled = true
		$AtkMenuPanel/AtkMenuContainer/Jab.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Straight.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Cross.disabled = true
		$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = false
	else:
		$"AtkMenuPanel/AtkMenuContainer/Roundhouse Kick".disabled = false
		$"AtkMenuPanel/AtkMenuContainer/Axe Kick".disabled = false
		$AtkMenuPanel/AtkMenuContainer/Jab.disabled = false
		$AtkMenuPanel/AtkMenuContainer/Straight.disabled = false
		$AtkMenuPanel/AtkMenuContainer/Cross.disabled = false
		$AtkMenuPanel/AtkMenuContainer/Confirm.disabled = true


func _on_single_target_toggled(button_pressed):
	togglesinglebuttons()


func _on_aoe_toggled(button_pressed):
	toggleaoebuttons()


func _on_single_target_back_button_pressed():
	$AnimationPlayer.play_backwards("singletargetpopup")
	enabletargettingbuttons()

func _on_single_target_pressed():
	$AnimationPlayer.play("singletargetpopup")
	disabletargettingbuttons()
