scripting opening
openOn: anObject
	
	^ (super openOn: anObject)
		title: self session name;
		yourself