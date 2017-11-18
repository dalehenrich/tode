*Topez-Server-31x-Core
allSuperclassesOf: aClass
  "Returns a collection of all the superclasses of the given class: an Array that
	 holds the inheritence path of aClass."

  classes ifNil: [ self updateClassInfo ].
  (classes includesIdentical: aClass)
    ifFalse: [ 
      self addClass: aClass.
      ^ self allSuperclassesOf: aClass ].
  ^ aClass allSuperclasses reverse
