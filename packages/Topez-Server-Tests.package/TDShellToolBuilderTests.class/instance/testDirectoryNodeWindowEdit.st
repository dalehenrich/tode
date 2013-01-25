as yet unclassified
testDirectoryNodeWindowEdit
  "object aspect windowId expected"

  self
    executeWindowBuilderSpecs:
      {{(self directoryNodeStructure).
      #'edit'.
      nil.
      'anArray( ''.      -> [TDDirectoryNode] /'', ''a*     -> [String] ''''[ :topez :tokens :windowId | ]'''''', ''b*     -> [String] ''''3+4'''''', ''c*     -> [String] ''''cat /home/.window/model'''''', ''d      -> [Text] This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g...'', ''e      -> [String] ''''This is a string'''''')/ ([Array] anArray( ''. -> [TDDirectoryNode] /'', ''a* -> [String] ''''[ :topez :tokens :windowId | ]'''''', ''b* -> [String] ''''3+4'''''', ''c* -> [String] ''''cat /home...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> [TDDirectoryNode] /''
	2@ -> [String] ''a* -> [String] ''''[ :topez :tokens :windowId | ]''''''
	3@ -> [String] ''b* -> [String] ''''3+4''''''
	4@ -> [String] ''c* -> [String] ''''cat /home/.window/model''''''
	5@ -> [String] ''d -> [Text] This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g...''
	6@ -> [String] ''e -> [String] ''''This is a string''''''
'}.
      {(self directoryNodeStructure asTDObjectNode: nil topez: self topez aspect: #'edit').
      #'edit'.
      nil.
      'anArray( ''.         -> [TDObjectNode] //'', ''(class)@  -> [TDDirectoryNode class] TDDirectoryNode'', ''(value)@  -> [String] ''''aTDDirectoryNode'''''', ''aspect@   -> [UndefinedObject] nil'', ''contents@ -> [Dictionary] aDictionary( ''''a''''->/a/, ''''d''''->/d/, ''''b''''->/b/, ''''c''''->/c/, ''''e''''->/e/)'', ''name@     -> [UndefinedObject] nil'', ''parent@   -> [UndefinedObject] nil'', ''readMe@   -> [UndefinedObject] nil'', ''topez@    -> [UndefinedObject] nil'')/ ([Array] anArray( ''. -> [TDObjectNode] //'', ''(class)@ -> [TDDirectoryNode class] TDDirectoryNode'', ''(value)@ -> [String] ''''aTDDirectoryNode'''''', ''aspect@ -> [...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> [TDObjectNode] //''
	2@ -> [String] ''(class)@ -> [TDDirectoryNode class] TDDirectoryNode''
	3@ -> [String] ''(value)@ -> [String] ''''aTDDirectoryNode''''''
	4@ -> [String] ''aspect@ -> [UndefinedObject] nil''
	5@ -> [String] ''contents@ -> [Dictionary] aDictionary( ''''a''''->/a/, ''''d''''->/d/, ''''b''''->/b/, ''''c''''->/c/, ''''e''''->/e/)''
	6@ -> [String] ''name@ -> [UndefinedObject] nil''
	7@ -> [String] ''parent@ -> [UndefinedObject] nil''
	8@ -> [String] ''readMe@ -> [UndefinedObject] nil''
	9@ -> [String] ''topez@ -> [UndefinedObject] nil''
'}.
      {(self directoryNodeStructure childNamed: 'a' ifAbsent: [  ]).
      #'edit'.
      nil.
      '''[ :topez :tokens :windowId |  ]''/:
[String] ''[ :topez :tokens :windowId | ]'''}.
      {(self directoryNodeStructure childNamed: 'b' ifAbsent: [  ]).
      #'edit'.
      nil.
      '''3+4''/:
[String] ''3+4'''}.
      {(self directoryNodeStructure childNamed: 'c' ifAbsent: [  ]).
      #'edit'.
      nil.
      '''cat /home/.window/model''/:
[String] ''cat /home/.window/model'''}}