accesing
label
	^ (self selected ifTrue:['* '] ifFalse:['']), self name.