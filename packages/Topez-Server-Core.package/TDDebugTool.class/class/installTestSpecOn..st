as yet unclassified
installTestSpecOn: aTDTopezServer
  (aTDTopezServer installChildrenAt: self commandPath , '/tests')
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'suite';
            contents:
                '| suite |
suite := TestSuite named: ''Debug Tool Tests''.
#(TDDebugToolTests) do: [:className |
	suite addTests: (Smalltalk at: className) suite tests ].
^suite
';
            yourself);
    yourself