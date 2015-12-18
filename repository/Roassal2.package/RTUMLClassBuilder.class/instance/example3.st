examples
example3
	"
	self new example3
	"
	| objects|
	objects := Array
		with: (Array with: 'MyClass' with: (Array with: #iv1 with: #iv2) 
			with: (Array with: #method1 with: #method2 with: #method3 ) )
		with: (Array with: 'MyClass2' with: (Array with: #iv3 with: #iv4) 
			with: (Array with: #method4 with: #method5 with: #method6 ) ).

	RTUMLClassBuilder new
		addObjects: objects;
		classname: #first;
		instanceVariables: #second;
		methodsNames: #third;
		methodselector: #yourself;
		attributeselector: #yourself;
		superclass: nil;
		open