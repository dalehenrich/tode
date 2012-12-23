as yet unclassified
installTestSpecOn: aTDTopezServer
  | path |
  path := self commandPath , '/tests'.
  (aTDTopezServer installChildrenAt: path)
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'suite';
            contents:
                '| suite |
suite := TestSuite named: ''DebugTool Suite (' , path
                    ,
                      '/suite)''.
#(TDDebugToolTests) do: [:className |
	suite addTests: (Smalltalk at: className) suite tests ].
^suite
';
            yourself);
    yourself