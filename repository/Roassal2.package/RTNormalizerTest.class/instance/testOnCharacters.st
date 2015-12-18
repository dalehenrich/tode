gray color
testOnCharacters

	| es n |
	n := RTGrayLinearColor new 
				command: #asInteger; 
				scope: ($a to: $z).
				
	es := RTBox new
				color: n;
				elementsOn: ($a to: $z).

	self assert: n max = $z asInteger.
	self assert: n min = $a asInteger.
	
	self assert: es first trachelShape color = Color white.
	self assert: es last trachelShape color = Color black.