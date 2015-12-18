public
on: element
	| anim |
	self highlight: element color: (color rtValue: element).
	anim := RTNopAnimation new
		waitFor: self nbOfSecondsLightOn after: [ self unhighlight: element ].
	element view addAnimation: anim.
	anim start.
	^ anim