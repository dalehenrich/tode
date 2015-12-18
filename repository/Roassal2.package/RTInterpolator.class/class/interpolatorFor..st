as yet unclassified
interpolatorFor: b
	b isString
		ifTrue: [ 
			('#*' match: b) ifTrue: [ ^ RTColorInterpolator ].
			^ nil. "RTStringInterpolator" ]. "TODO"
	b isColor
		ifTrue: [ ^ RTColorInterpolator ].
	"b isArray
		ifTrue: [ ^ RTArrayInterpolator ].
	b isNumber
		ifFalse: [^ RTObjectInterpolator]" "TODO"
	^ RTNumberInterpolator


		