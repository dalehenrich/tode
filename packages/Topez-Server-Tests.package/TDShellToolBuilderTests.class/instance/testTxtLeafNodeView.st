as yet unclassified
testTxtLeafNodeView
  "Text/String clientElements store contents as STON version of String or Text"

  self
    executeWindowBuilderSpecs:
      {{(self directoryNodeStructure childNamed: 'd' ifAbsent: [  ]).
      #'browse'.
      nil.
      '''Text{#string:''''This is a string'''',#runs:RunArray{#runs:[16],#values:[[TextEmphasis{#emphasisCode:0,#setMode:true},TextEmphasis{#emphasisCode:1,#setMode:true}]],#lastIndex:nil,#lastRun:nil,#lastOffset:nil}}''/:
[String] ''Text{#string:''''This is a string'''',#runs:RunArray{#runs:[16],#values:[[TextEmphasis{#emphasisCode:0,#setMode:true},TextEmphasis{#emphasisCode:1,#setMode:true}]]...'}.
      {(self directoryNodeStructure childNamed: 'e' ifAbsent: [  ]).
      #'browse'.
      nil.
      '''''''This is a string''''''/:
[String] ''''''This is a string'''''''}.
      {(self directoryNodeStructure childNamed: 'd' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.         -> [TDObjectNode] /d//'', ''(class)@  -> [TDTxtLeafNode class] TDTxtLeafNode'', ''(value)@  -> [String] ''''aTDTxtLeafNode'''''', ''contents@ -> [Text] This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g...'', ''name@     -> [String] ''''d'''''', ''parent@   -> [TDDirectoryNode] /'', ''topez@    -> [UndefinedObject] nil'')/ ([Array] anArray( ''. -> [TDObjectNode] /d//'', ''(class)@ -> [TDTxtLeafNode class] TDTxtLeafNode'', ''(value)@ -> [String] ''''aTDTxtLeafNode'''''', ''contents@ -> [Text...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> [TDObjectNode] /d//''
	2@ -> [String] ''(class)@ -> [TDTxtLeafNode class] TDTxtLeafNode''
	3@ -> [String] ''(value)@ -> [String] ''''aTDTxtLeafNode''''''
	4@ -> [String] ''contents@ -> [Text] This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g...''
	5@ -> [String] ''name@ -> [String] ''''d''''''
	6@ -> [String] ''parent@ -> [TDDirectoryNode] /''
	7@ -> [String] ''topez@ -> [UndefinedObject] nil''
'}.
      {(self directoryNodeStructure childNamed: 'e' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.         -> [TDObjectNode] /e//'', ''(class)@  -> [TDTxtLeafNode class] TDTxtLeafNode'', ''(value)@  -> [String] ''''aTDTxtLeafNode'''''', ''contents@ -> [String] ''''This is a string'''''', ''name@     -> [String] ''''e'''''', ''parent@   -> [TDDirectoryNode] /'', ''topez@    -> [UndefinedObject] nil'')/ ([Array] anArray( ''. -> [TDObjectNode] /e//'', ''(class)@ -> [TDTxtLeafNode class] TDTxtLeafNode'', ''(value)@ -> [String] ''''aTDTxtLeafNode'''''', ''contents@ -> [Stri...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> [TDObjectNode] /e//''
	2@ -> [String] ''(class)@ -> [TDTxtLeafNode class] TDTxtLeafNode''
	3@ -> [String] ''(value)@ -> [String] ''''aTDTxtLeafNode''''''
	4@ -> [String] ''contents@ -> [String] ''''This is a string''''''
	5@ -> [String] ''name@ -> [String] ''''e''''''
	6@ -> [String] ''parent@ -> [TDDirectoryNode] /''
	7@ -> [String] ''topez@ -> [UndefinedObject] nil''
'}}