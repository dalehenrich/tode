accessing
default
	| singleton |
	singleton := SessionTemps current at: #TZRubyEngine_Default otherwise: nil.
	singleton == nil
		ifTrue: [ 
			singleton := self new.
			SessionTemps current at: #TZRubyEngine_Default put: singleton ].
	^ singleton