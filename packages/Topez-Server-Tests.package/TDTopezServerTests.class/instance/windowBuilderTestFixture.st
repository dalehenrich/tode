as yet unclassified
windowBuilderTestFixture
  "object aspect windowId expected"

  ^ {{(self directoryNodeStructure).
  #'edit'.
  nil.
  '/ ([Array] anArray( ''. -> [TDDirectoryNode] /'', ''a/ -> [TDDirectoryNode] /a/'', ''b/ -> [TDDirectoryNode] /b/'', ''c/ -> [TDDirectoryNode] /c/'')):
	1@ -> [String] ''. -> [TDDirectoryNode] /''
	2@ -> [String] ''a/ -> [TDDirectoryNode] /a/''
	3@ -> [String] ''b/ -> [TDDirectoryNode] /b/''
	4@ -> [String] ''c/ -> [TDDirectoryNode] /c/''
'}.
  {(self directoryNodeStructure asTDObjectNode: nil topez: self topez aspect: #'edit').
  #'edit'.
  nil.
  '/ ([Array] anArray( ''. -> [TDObjectNode] /'', ''aspect@ -> [UndefinedObject] nil'', ''contents@ -> [Dictionary] aDictionary( ''''a''''->/a/, ''''b''''->/b/, ''''c''''->/c/)'', ''n...):
	1@ -> [String] ''. -> [TDObjectNode] /''
	2@ -> [String] ''aspect@ -> [UndefinedObject] nil''
	3@ -> [String] ''contents@ -> [Dictionary] aDictionary( ''''a''''->/a/, ''''b''''->/b/, ''''c''''->/c/)''
	4@ -> [String] ''name@ -> [UndefinedObject] nil''
	5@ -> [String] ''parent@ -> [UndefinedObject] nil''
	6@ -> [String] ''readMe@ -> [UndefinedObject] nil''
	7@ -> [String] ''topez@ -> [UndefinedObject] nil''
'}.
  {(1 -> '1').
  #'edit'.
  nil.
  '1->''1'''}.
  {(self directoryNodeStructure childNamed: 'a').
  #'edit'.
  nil.
  ''}.
  {(self directoryNodeStructure childNamed: 'b').
  #'edit'.
  nil.
  ''}.
  {(self directoryNodeStructure childNamed: 'c').
  #'edit'.
  nil.
  ''}.
  {(self directoryNodeStructure childNamed: 'd').
  #'edit'.
  nil.
  ''}}