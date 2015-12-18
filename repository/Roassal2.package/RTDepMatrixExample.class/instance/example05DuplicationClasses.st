as yet unclassified
example05DuplicationClasses
	"
	self new example05DuplicationClasses
	"
	| m cls1 cls2 str |
	 
	str := WriteStream on: String new.
	RTLine fileOutOn: str.
	cls1 := str contents lines.

	str := WriteStream on: String new.
	RTBox fileOutOn: str.
	cls2 := str contents lines.

	m := RTDepMatrix new.
	m horizontal: cls1.
	m vertical: cls2.
	m open