accessing
maximum
	| max |
	"We initialize the mininum to any value found in the table"
	max := self values last detect: #isNumber ifNone: [ 0 ].
	
	self values do: [ :row |
		row do: [ :value | 
			value isNumber ifTrue: [ max := max max: value ] ] ].
	^ max