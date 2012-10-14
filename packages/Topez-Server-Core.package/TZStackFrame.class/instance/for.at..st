initialization
for: aGsProcess  at: index
	"method homeMethod
	                  inClass inBlock selector stepPoint
	                  stepPointLineNumber receiver frameSelf 
	                  argsAndTemps"
	
	| frameContents stepPtAr names |
	process := aGsProcess.
	frameIndex := index.
	frameContents := process _frameContentsAt: frameIndex.
	method := frameContents at: 1.
	homeMethod := method isMethodForBlock 
		ifTrue:[ method inClass]
		ifFalse:[ method ].
	inClass := homeMethod inClass.
	selector := homeMethod selector.
	stepPtAr := process _localStepPointAt: index.
	stepPtAr ~~ nil
		ifTrue: [ 
			stepPoint := stepPtAr at: 1.
			stepPointLineNumber := (stepPtAr at: 2)_lineNumberForStep: stepPoint ].
	receiver := frameContents at: 10.
	frameSelf := frameContents at: 8.
	argsAndTemps := Dictionary new.
	names := frameContents at: 9.
	1 to: names size do: [:index |
		argsAndTemps at: (names at: index) put: (frameContents at: 10 + index) ].
