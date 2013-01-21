as yet unclassified
nodeBuilderTestFixture
  "object aspect expected"

  ^ {{((TDTodeTestClass
    with: 1
    with: 2
    with: {3}
    with: 4)
    x: 'x';
    y: 'y';
    z: 'z').
  #'edit'.
  '/ ([TDTodeTestClass] [x: ''x'' y: ''y'' z: ''z''] (1 2 anArray( 3) 4)):
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
  '/:
[String] ''123'''}.
  {'123'.
  #'inspect'.
  'I want to see the bytes in the string...'}}