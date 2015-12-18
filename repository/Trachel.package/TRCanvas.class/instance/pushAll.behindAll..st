action
pushAll: elements1 behindAll: elements2 
	"Move all elements in elements1, which are supposely contained in the shapes variable, before all elements contained in elements2"
	| firstElement |
	firstElement := self firstElementOf: elements2.
	elements1 do: [ :e |
		self push: e behind: firstElement ]