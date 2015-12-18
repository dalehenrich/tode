as yet unclassified
run: Oop
	
	| oop classes |
	self assert: (Oop isNotNil) description: 'No oop detected or not integer'.
	self view clean.
	
	self builder: RTMondrian new.
	self builder view: self view.

	oop := Oop asInteger.
	classes := self workspace tdShell onServerDo:[(Object _objectForOop: (oop)) withAllSubclasses collect: [ :c | c name -> {(c superClass name). ((c instVarNamed: #methDicts asString) numElements)}]].

	self shape: (self shapeMenus detect: [ :m | m selected ]) name.
	
	(self shape = 'rectangle') ifTrue: [
			self builder shape rectangle.
		].
	(self shape = #ellipse) ifTrue: [
			self builder shape ellipse.
		].

	self builder nodes: classes.

	self builder edges 
		connectFrom: [:e | classes detect: [ :c | c name = e value first ] ifNone:[ nil ]].

	self builder normalizer
 	   normalizeSize: [:e | e value second ] using: #sqrt;
  	   normalizeColor: [:e | e value second ] using: (Array with: Color green with: Color red) using: #sqrt.
	
	self layout: (self layoutMenus detect: [ :m | m selected ]) name.
	
	(self layout = #tree) ifTrue: [
		self builder layout tree.
		].
	(self layout = #circle) ifTrue: [
		self builder layout circle.
		].
	(self layout = #cluster) ifTrue: [
		self builder layout cluster.
		].
	
	self builder build.

	self view canvas camera focusOnCenter.
	

	
