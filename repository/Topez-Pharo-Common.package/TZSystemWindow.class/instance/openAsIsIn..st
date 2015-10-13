resize/collapse
openAsIsIn: aWorld
	"This msg and its callees result in the window being activeOnlyOnTop.
	Play the open sound if the preference is enabled."

	self playOpenSound.
	aWorld addMorph: self.
	true
		ifTrue: [ self activate ]
		ifFalse: [ 
			"flakey keybooard activation"
			self basicActivate ].
	aWorld startSteppingSubmorphsOf: self.
	self announceOpened.
	World announcer
		announce:
			(WindowOpened new
				window: self;
				yourself)