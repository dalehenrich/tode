accessing
minimum
	"Return the minimum of the whole table"
	| min |
	"We initialize the mininum to any value found in the table"
	min := self values last detect: #isNumber ifNone: [ 0 ].
	
	self values do: [ :row |
		row do: [ :value | 
			value isNumber ifTrue: [ min := min min: value ] ] ].
	^ min