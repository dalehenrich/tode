window bounds
createAlternateBoundsDictionary
	"self initializeBounds"

	| base width height classListsOrigin top listWidth fullHeight codeWidth hierarcyOrigin classDefOrigin thirdHeight twoThirdHeight thirdListWindowExtent listWindowExtent codeWindowExtent debuggerWidth boundsDictionary appWidth classDefWidth twoThirdListWindowExtent halfHeight halfListWindowExtent|
	base := self baseWidth.	"680"
	width := base x / 80.0 * 1.1.
	height := (base y * 1.30) asInteger.
	codeWidth := (width * self codeWindowWidth) asInteger.	"540 + 180 - 40"
	top := (height * self windowOrigin y) asInteger.	"10"
	classListsOrigin := (self windowOrigin x * width) asInteger.	"35 - 10"
	fullHeight := self codeWindowHeight * height.	"420"
	thirdHeight := fullHeight // 3.	"140"
	twoThirdHeight := 2 * thirdHeight.
	halfHeight := fullHeight //2.
	listWidth := (self listWindowWidth * width) asInteger.	"250 - 10"
	debuggerWidth := (self debuggerWindowWidth * width) asInteger.
	listWindowExtent := listWidth @ twoThirdHeight.
	thirdListWindowExtent := listWidth @ thirdHeight.
	halfListWindowExtent := listWidth @ halfHeight.
	twoThirdListWindowExtent := listWidth @ twoThirdHeight.
	codeWindowExtent := codeWidth @ fullHeight.
	hierarcyOrigin := classListsOrigin + listWidth.
	classDefOrigin := hierarcyOrigin + listWidth.
	classDefWidth := codeWidth - (listWidth).
	appWidth := (debuggerWidth + listWidth) / 2.
	boundsDictionary := Dictionary new.
	boundsDictionary
		at: #classCategories put: (classListsOrigin @ top extent: listWindowExtent);
		at: #configurations put: (classListsOrigin @ top extent: thirdListWindowExtent);
		at: #packages put: (classListsOrigin @ (top + halfHeight) extent: thirdListWindowExtent);
		at: #classes put: (classListsOrigin @ (top + twoThirdHeight) extent: listWidth @ twoThirdHeight);
		at: #superclasses put: (hierarcyOrigin @ top extent: halfListWindowExtent);
		at: #classDef put: (classDefOrigin @ top extent: (classDefWidth - listWidth) @ halfHeight);
		at: #instanceSelectors put: ((hierarcyOrigin + classDefWidth) @ top extent: halfListWindowExtent);
		at: #classSelectors put: ((hierarcyOrigin + classDefWidth + listWidth) @ top extent: halfListWindowExtent);
		at: #method put: (hierarcyOrigin @ (top + halfHeight) extent: codeWindowExtent);
		at: #implementors
			put: ((hierarcyOrigin + codeWidth) @ (top + halfHeight) extent: (2 * listWidth) @ twoThirdHeight);
		at: #debugger put: ((hierarcyOrigin + codeWidth) @ (top + halfHeight) extent: debuggerWidth @ fullHeight);
		at: #receiver
			put: ((hierarcyOrigin + codeWidth) @ (top + halfHeight + codeWindowExtent y) extent: listWidth @ twoThirdHeight);
		at: #app1
			put:
				((classListsOrigin + codeWidth) @ (top + halfHeight + codeWindowExtent y)
						extent: appWidth @ (self shellWindowHeight * height));
		at: #app2
			put:
				((classListsOrigin + codeWidth + appWidth) @ (top + halfHeight + codeWindowExtent y)
						extent: appWidth @ (self shellWindowHeight * height));
		at: #app3
			put:
				((classListsOrigin + codeWidth) @ (top + halfHeight + codeWindowExtent y - (self shellWindowHeight * height))
						extent: appWidth @ (self shellWindowHeight * height));
		at: #app4
			put:
				((classListsOrigin + codeWidth + appWidth)
						@ (top + halfHeight + codeWindowExtent y - (self shellWindowHeight * height))
						extent: appWidth @ (self shellWindowHeight * height));
		at: #context
			put:
				((hierarcyOrigin + codeWidth) @ (top + halfHeight + codeWindowExtent y)
						extent: debuggerWidth @ (self shellWindowHeight * height));
		at: #evaluator
			put:
				(classListsOrigin @ (top + halfHeight + codeWindowExtent y) extent: codeWidth @ (self shellWindowHeight * height));
		at: #inspector
			put:
				((classListsOrigin + codeWidth) @ (top + halfHeight + codeWindowExtent y)
						extent: codeWidth @ (self shellWindowHeight * height));
		yourself.
	^ boundsDictionary