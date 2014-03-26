typing support
dispatchCommandOn: aKeyboardEvent return: return
	| asciiValue honorCommandKeys char |
	asciiValue := aKeyboardEvent keyValue.
	honorCommandKeys := self cmdKeysInText.
	((self class specialShiftCmdKeys includes: asciiValue) and: [ asciiValue < 27 ])
		ifTrue: [ 
			"Special keys overwrite crtl+key combinations - at least on Windows. To resolve this
	conflict, assume that keys other than cursor keys aren't used together with Crtl."
			^ self performCmdActionsWith: aKeyboardEvent shifted: aKeyboardEvent controlKeyPressed return: return ].
	((honorCommandKeys and: [ aKeyboardEvent commandKeyPressed ])
		or: [ self class specialShiftCmdKeys includes: asciiValue ])
		ifTrue: [ 
			"backspace, and escape keys (ascii 8 and 27) are command keys"
			^ self performCmdActionsWith: aKeyboardEvent shifted: aKeyboardEvent shiftPressed return: return ].
	(honorCommandKeys and: [ aKeyboardEvent controlKeyPressed ])
		ifTrue: [ 
			"the control key can be used to invoke shift-cmd shortcuts"
			^ self performCmdActionsWith: aKeyboardEvent shifted: true return: return ].
	asciiValue == 13
		ifTrue: [ 
			"allow for mapping or CR action"
			^ self performCmdActionsWith: aKeyboardEvent shifted: false return: return ].
	^ false