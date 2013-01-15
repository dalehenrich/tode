as yet unclassified
installTestSpecOn: aTDTopezServer
  | path |
  path := self commandPath.
  (aTDTopezServer installChildrenAt: path)
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'testSuite';
            contents:
                '| suite |
suite := TestSuite named: ''Shell Suite (' , path
                    ,
                      '/suite)''.
#(TDTopezServerTests) do: [:className |
	suite addTests: (Smalltalk at: className) suite tests ].
^suite
';
            yourself);
    yourself