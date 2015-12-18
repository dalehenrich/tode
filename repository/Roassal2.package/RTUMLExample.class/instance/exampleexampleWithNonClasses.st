sources
exampleexampleWithNonClasses

| objects b |
	"objects :=  {
		{ 'MyClass' . { #iv1 . #iv2 } . { #method1 . #method2 . #method3 }}  .
		{ 'MyClass2' . { #iv2 . #iv2 } . { #method1 . #method2 . #method4 }}  }."
	objects := Array
		with: (Array with: 'MyClass' with: (Array with: #iv1 with: #iv2) 
			with: (Array with: #method1 with: #method2 with: #method3 ) )
		with: (Array with: 'MyClass2' with: (Array with: #iv3 with: #iv4) 
			with: (Array with: #method4 with: #method5 with: #method6 ) ).

	b := RTUMLClassBuilder new.
	b attributeShape label if: [ :a | a = #iv1 ] color: Color red.
	b
		addObjects: objects;
		classname: #first;
		instanceVariables: #second;
		methodsNames: #third;
		methodselector: #yourself;
		attributeselector: #yourself;
		superclass: nil.
b build.
^ b view