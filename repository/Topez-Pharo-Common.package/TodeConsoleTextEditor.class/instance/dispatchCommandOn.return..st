typing support
dispatchCommandOn: aKeyboardEvent return: return
	| asciiValue |
	asciiValue := aKeyboardEvent keyCharacter asciiValue.
	((self class specialShiftCmdKeys includes: asciiValue) and: [ asciiValue < 27 ])
		ifTrue: [ 
			"Special keys overwrite crtl+key combinations - at least on Windows. To resolve this
	conflict, assume that keys other than cursor keys aren't used together with Crtl."
			^ self performCmdActionsWith: aKeyboardEvent shifted: aKeyboardEvent controlKeyPressed return: return ].
	(( aKeyboardEvent commandKeyPressed or: [ aKeyboardEvent controlKeyPressed ] )
		or: [ self class specialShiftCmdKeys includes: asciiValue ])
		ifTrue: [ 
			"backspace, and escape keys (ascii 8 and 27) are command keys"
			^ self performCmdActionsWith: aKeyboardEvent shifted: aKeyboardEvent shiftPressed return: return ].
	^ false