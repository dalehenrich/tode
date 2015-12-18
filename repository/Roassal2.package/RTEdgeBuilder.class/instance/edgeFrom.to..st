public
edgeFrom: source to: target 
	"source and target are elements"
	| edge |
	edge := super edgeFrom: source to: target.
	shouldNotBeUsedInLayout ifFalse: [ edge notUseInLayout ].
	^ edge