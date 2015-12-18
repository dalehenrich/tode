normalizers
normalizer01
	"
	self new normalizer01
	"
	| v es n |
	v := RTView new.
	n := RTGrayLinearColor new 
				command: #asInteger; 
				scope: ($a to: $z).
				
	es := RTBox new
				size: 40;
				color: n;
				elementsOn: ($a to: $z).
				
	v addAll: es.
	es @ RTPopup.
	RTGridLayout on: es.

	v open