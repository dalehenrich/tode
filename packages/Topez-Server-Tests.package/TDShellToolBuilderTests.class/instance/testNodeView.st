as yet unclassified
testNodeView
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
      #'view'.
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
      #'view'.
      '''123''/:
[String] ''123'''}.
      {'123'.
      #'browse'.
      '''123''/:
[String] ''123'''}.
      {(Dictionary new
        add: '1' -> 1;
        add: '2' -> 2;
        yourself).
      #'view'.
      'aDictionary( ''2''->2, ''1''->1)/ ([Dictionary] aDictionary( ''2''->2, ''1''->1)):
	1@ -> [Association] ''2''->2
	2@ -> [Association] ''1''->1
'}}