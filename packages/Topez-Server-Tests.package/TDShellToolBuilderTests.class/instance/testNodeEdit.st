as yet unclassified
testNodeEdit
  "object aspect expected"

  self
    executeNodeBuilderSpecs:
      {{((TDTodeTestClass
        with: 1
        with: 2
        with: {3}
        with: 4)
        x: 'x';
        y: 'y';
        z: 'z').
      #'edit'.
      '[x: ''x'' y: ''y'' z: ''z'']
(1 2 anArray( 3) 4)/ ([TDTodeTestClass] [x: ''x'' y: ''y'' z: ''z''] (1 2 anArray( 3) 4)):
	(class)@ -> [TDTodeTestClass class] TDTodeTestClass
	(value)@ -> [String] ''aTDTodeTestClass''
	x@ -> [String] ''x''
	y@ -> [String] ''y''
	z@ -> [String] ''z''
	1@ -> [SmallInteger] 1
	2@ -> [SmallInteger] 2
	3@ -> [Array] anArray( 3)
	4@ -> [SmallInteger] 4
'}.
      {'123'.
      #'edit'.
      '''123''/:
[String] ''123'''}}