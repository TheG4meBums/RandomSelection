extends Control


onready var option1Text = $"Main Container/ColorRect/Option1"
onready var option2Text = $"Main Container/ColorRect/Option2"
onready var option3Text = $"Main Container/ColorRect/Option3"

onready var HealthValue = $"Main Container/VALUES/HP/HPValue"
onready var DamageValue = $"Main Container/VALUES/Damage/DamageValue"
onready var SpeedValue = $"Main Container/VALUES/Speed/SpeedValue"
onready var SpecialValue = $"Main Container/VALUES/Special/SpecialValue"
onready var RangeValue = $"Main Container/VALUES/Range/RangeValue"
onready var BreakValue = $"Main Container/VALUES/Break/BreakValue"

var option1
var option2
var option3
var option1Update
var option2Update
var option3Update
var selectionLimit

var values:Dictionary

export var selectionArray = Array()
export var testArray = Array()


func _ready():
	randomize()
	option1 = null
	option2 = null
	option3 = null
	values["Health"] = 1
	values["Damage"] = 1
	values["Speed"] = 1
	values["Special"] = 1
	values["Range"] = 1
	values["Break"] = 1
	selectionLimit = testArray.size()


func _on_Option1_pressed():
	values[option1[0]] += option1[1]
	var text1 = get(option1[0] + "Value")
	text1.text = str(values[option1[0]])
	Generate()


func _on_Option2_pressed():
	values[option2[0]] += option2[1]
	var text2 = get(option2[0] + "Value")
	text2.text = str(values[option2[0]])
	Generate()


func _on_Option3_pressed():
	values[option3[0]] += option3[1]
	var text3 = get(option3[0] + "Value")
	text3.text = str(values[option3[0]])
	Generate()
	
	
func _on_Generate_pressed():
	Generate()
	
	
func Generate():
	option1 = randi() % selectionLimit
	option2 = randi() % selectionLimit
	option3 = randi() % selectionLimit
	
	option1 = testArray[option1]
	option2 = testArray[option2]
	option3 = testArray[option3]
	
	option1Text.text = option1[0]
	option2Text.text = option2[0]
	option3Text.text = option3[0]
