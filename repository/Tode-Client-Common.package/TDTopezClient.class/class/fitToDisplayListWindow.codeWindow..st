window bounds
fitToDisplayListWindow: lwWidth codeWindow: cwWidth
	"self fitToDisplay"

	| displayExtent width80M mWidth mHeight displayCharExtent xWidth cwHeight dbgWidth dbgMax yHeight |
	displayExtent := Display usableArea extent.
	width80M := TDTopezClient baseWidth x.
	mHeight := TDTopezClient baseWidth y.
	mWidth := width80M // 80 * 1.1.
	displayCharExtent := (displayExtent x // mWidth) @ (displayExtent y // mHeight).
	xWidth := displayCharExtent x.
	dbgMax := cwWidth.
	(xWidth - cwWidth) // 3 > lwWidth
		ifTrue: [ 
			"room for bare minimum"
			(xWidth - cwWidth) // 4 > lwWidth
				ifTrue: [ 
					"room one extra window"
					(xWidth - cwWidth) // 5 > lwWidth
						ifTrue: [ 
							"two extra "
							dbgWidth := 4 * lwWidth min: dbgMax ]
						ifFalse: [ 
							"one extra"
							dbgWidth := 3 * lwWidth min: dbgMax ] ]
				ifFalse: [ 
					"bare minimum"
					dbgWidth := 2 * lwWidth min: dbgMax ] ]
		ifFalse: [ 
			"not enough room"
			self halt ].
	yHeight := displayCharExtent y.
	cwHeight := 17.
	(yHeight - cwHeight) * 3 > 3
		ifTrue: [ 
			""
			 ].
	false
		ifTrue: [ 
			TDWindowProperties
				windowOrigin: 1.1 @ 1.1
				listWindowWidth: lwWidth
				codeWindowHeight: 17
				codeWindowWidth: cwWidth
				shellWindowHeight: 17
				debuggerWindowWidth: dbgWidth ].
	^ {lwWidth.
	cwWidth.
	dbgWidth}