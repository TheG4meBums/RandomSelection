extends Control

var test = 5
var test2 = 5

func _ready():
	print(test)
	var temp = get("test")
	temp += test2
	set("test", temp)
	print(test)
