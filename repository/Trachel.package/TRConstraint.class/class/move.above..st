public - moving
move: aShape above: anotherShape
	^ aShape translateTo: anotherShape center - (0 @ ((anotherShape height + aShape height) / 2)) 