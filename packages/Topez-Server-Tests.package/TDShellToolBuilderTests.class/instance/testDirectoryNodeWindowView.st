as yet unclassified
testDirectoryNodeWindowView
  "object aspect windowId expected"

  self
    executeWindowBuilderSpecs:
      {{(self directoryNodeStructure).
      #'view'.
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
      {(self directoryNodeStructure asTDObjectNode: nil topez: self topez aspect: #'view').
      #'view'.
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
      #'view'.
      nil.
      'anArray( ''.         -> [TDObjectNode] /a//'', ''(class)@  -> [TDScriptLeafNode class] TDScriptLeafNode'', ''(value)@  -> [String] ''''aTDScriptLeafNode'''''', ''block@    -> [UndefinedObject] nil'', ''contents@ -> [UndefinedObject] nil'', ''manPage@  -> [UndefinedObject] nil'', ''name@     -> [String] ''''a'''''', ''parent@   -> [TDDirectoryNode] /'', ''topez@    -> [UndefinedObject] nil'')/ ([Array] anArray( ''. -> [TDObjectNode] /a//'', ''(class)@ -> [TDScriptLeafNode class] TDScriptLeafNode'', ''(value)@ -> [String] ''''aTDScriptLeafNode'''''', ''block@ ...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> [TDObjectNode] /a//''
	2@ -> [String] ''(class)@ -> [TDScriptLeafNode class] TDScriptLeafNode''
	3@ -> [String] ''(value)@ -> [String] ''''aTDScriptLeafNode''''''
	4@ -> [String] ''block@ -> [UndefinedObject] nil''
	5@ -> [String] ''contents@ -> [UndefinedObject] nil''
	6@ -> [String] ''manPage@ -> [UndefinedObject] nil''
	7@ -> [String] ''name@ -> [String] ''''a''''''
	8@ -> [String] ''parent@ -> [TDDirectoryNode] /''
	9@ -> [String] ''topez@ -> [UndefinedObject] nil''
'}.
      {(self directoryNodeStructure childNamed: 'b' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.         -> [TDObjectNode] /b//'', ''(class)@  -> [TDSmalltalkLeafNode class] TDSmalltalkLeafNode'', ''(value)@  -> [String] ''''aTDSmalltalkLeafNode'''''', ''contents@ -> [String] ''''3+4'''''', ''manPage@  -> [UndefinedObject] nil'', ''name@     -> [String] ''''b'''''', ''parent@   -> [TDDirectoryNode] /'', ''topez@    -> [UndefinedObject] nil'')/ ([Array] anArray( ''. -> [TDObjectNode] /b//'', ''(class)@ -> [TDSmalltalkLeafNode class] TDSmalltalkLeafNode'', ''(value)@ -> [String] ''''aTDSmalltalkLeafNode'''''', ''...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> [TDObjectNode] /b//''
	2@ -> [String] ''(class)@ -> [TDSmalltalkLeafNode class] TDSmalltalkLeafNode''
	3@ -> [String] ''(value)@ -> [String] ''''aTDSmalltalkLeafNode''''''
	4@ -> [String] ''contents@ -> [String] ''''3+4''''''
	5@ -> [String] ''manPage@ -> [UndefinedObject] nil''
	6@ -> [String] ''name@ -> [String] ''''b''''''
	7@ -> [String] ''parent@ -> [TDDirectoryNode] /''
	8@ -> [String] ''topez@ -> [UndefinedObject] nil''
'}.
      {(self directoryNodeStructure childNamed: 'c' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.         -> [TDObjectNode] /c//'', ''(class)@  -> [TDTopezLeafNode class] TDTopezLeafNode'', ''(value)@  -> [String] ''''aTDTopezLeafNode'''''', ''contents@ -> [String] ''''cat /home/.window/model'''''', ''manPage@  -> [UndefinedObject] nil'', ''name@     -> [String] ''''c'''''', ''parent@   -> [TDDirectoryNode] /'', ''topez@    -> [UndefinedObject] nil'')/ ([Array] anArray( ''. -> [TDObjectNode] /c//'', ''(class)@ -> [TDTopezLeafNode class] TDTopezLeafNode'', ''(value)@ -> [String] ''''aTDTopezLeafNode'''''', ''contents@ ->...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> [TDObjectNode] /c//''
	2@ -> [String] ''(class)@ -> [TDTopezLeafNode class] TDTopezLeafNode''
	3@ -> [String] ''(value)@ -> [String] ''''aTDTopezLeafNode''''''
	4@ -> [String] ''contents@ -> [String] ''''cat /home/.window/model''''''
	5@ -> [String] ''manPage@ -> [UndefinedObject] nil''
	6@ -> [String] ''name@ -> [String] ''''c''''''
	7@ -> [String] ''parent@ -> [TDDirectoryNode] /''
	8@ -> [String] ''topez@ -> [UndefinedObject] nil''
'}}