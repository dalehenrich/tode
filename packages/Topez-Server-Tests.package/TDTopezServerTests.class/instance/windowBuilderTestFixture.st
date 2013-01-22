as yet unclassified
windowBuilderTestFixture
  "object aspect windowId expected"

  ^ {{(self directoryNodeStructure).
  #'edit'.
  nil.
  '/ ([Array] anArray( ''. -> [TDDirectoryNode] /'', ''a* -> [String] ''''[ :topez :tokens :windowId | ]'''''', ''b* -> [String] ''''3+4'''''', ''c* -> [String] ''''cat /home...):
	1@ -> [String] ''. -> [TDDirectoryNode] /''
	2@ -> [String] ''a* -> [String] ''''[ :topez :tokens :windowId | ]''''''
	3@ -> [String] ''b* -> [String] ''''3+4''''''
	4@ -> [String] ''c* -> [String] ''''cat /home/.window/model''''''
	5@ -> [String] ''d -> [String] ''''This is a string''''''
'}.
  {(self directoryNodeStructure asTDObjectNode: nil topez: self topez aspect: #'edit').
  #'edit'.
  nil.
  '/ ([Array] anArray( ''. -> [TDObjectNode] /'', ''aspect@ -> [UndefinedObject] nil'', ''contents@ -> [Dictionary] aDictionary( ''''a''''->/a/, ''''d''''->/d/, ''''b''''->/b/, ''''c''...):
	1@ -> [String] ''. -> [TDObjectNode] /''
	2@ -> [String] ''aspect@ -> [UndefinedObject] nil''
	3@ -> [String] ''contents@ -> [Dictionary] aDictionary( ''''a''''->/a/, ''''d''''->/d/, ''''b''''->/b/, ''''c''''->/c/)''
	4@ -> [String] ''name@ -> [UndefinedObject] nil''
	5@ -> [String] ''parent@ -> [UndefinedObject] nil''
	6@ -> [String] ''readMe@ -> [UndefinedObject] nil''
	7@ -> [String] ''topez@ -> [UndefinedObject] nil''
'}.
  {(1 -> '1').
  #'edit'.
  nil.
  '/:
[String] ''1->''''1'''''''}.
  {(self directoryNodeStructure childNamed: 'a' ifAbsent: [  ]).
  #'edit'.
  nil.
  '/:
[String] ''[ :topez :tokens :windowId | ]'''}.
  {(self directoryNodeStructure childNamed: 'b' ifAbsent: [  ]).
  #'edit'.
  nil.
  '/:
[String] ''3+4'''}.
  {(self directoryNodeStructure childNamed: 'c' ifAbsent: [  ]).
  #'edit'.
  nil.
  '/:
[String] ''cat /home/.window/model'''}.
  {(self directoryNodeStructure childNamed: 'd' ifAbsent: [  ]).
  #'edit'.
  nil.
  '/:
[String] ''This is a string'''}}