initialization
initialize
	super initialize.
	classesGroup := RTGroup new.
	classes := OrderedCollection new.
	
	self classname: #name.
	self instanceVariables: #instVarNames.
	self methodsNames: #rtmethods.
	self superclass: #superclass.
	self methodselector: #selector.
	self attributeselector: #yourself.
	
	self layout: RTLayoutBuilder new.
	(self lineShape: RTShapeBuilder new) orthoVerticalLine.
	self methodShape: RTShapeBuilder new.
	self attributeShape: RTShapeBuilder new.