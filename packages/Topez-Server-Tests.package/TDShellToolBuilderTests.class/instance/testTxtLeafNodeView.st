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
      'anArray( ''.         -> /d//'', ''(class)@  -> TDTxtLeafNode'', ''(value)@  -> ''''aTDTxtLeafNode'''''', ''contents@ -> This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g)'', ''name@     -> ''''d'''''', ''parent@   -> /'', ''topez@    -> nil'')/ ([Array] anArray( ''. -> /d//'', ''(class)@ -> TDTxtLeafNode'', ''(value)@ -> ''''aTDTxtLeafNode'''''', ''contents@ -> This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> /d//''
	2@ -> [String] ''(class)@ -> TDTxtLeafNode''
	3@ -> [String] ''(value)@ -> ''''aTDTxtLeafNode''''''
	4@ -> [String] ''contents@ -> This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g)''
	5@ -> [String] ''name@ -> ''''d''''''
	6@ -> [String] ''parent@ -> /''
	7@ -> [String] ''topez@ -> nil''
'}.
      {(self directoryNodeStructure childNamed: 'e' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.         -> /e//'', ''(class)@  -> TDTxtLeafNode'', ''(value)@  -> ''''aTDTxtLeafNode'''''', ''contents@ -> ''''This is a string'''''', ''name@     -> ''''e'''''', ''parent@   -> /'', ''topez@    -> nil'')/ ([Array] anArray( ''. -> /e//'', ''(class)@ -> TDTxtLeafNode'', ''(value)@ -> ''''aTDTxtLeafNode'''''', ''contents@ -> ''''This is a string'''''', ''name@ -> ''''e'''''', ''paren...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> /e//''
	2@ -> [String] ''(class)@ -> TDTxtLeafNode''
	3@ -> [String] ''(value)@ -> ''''aTDTxtLeafNode''''''
	4@ -> [String] ''contents@ -> ''''This is a string''''''
	5@ -> [String] ''name@ -> ''''e''''''
	6@ -> [String] ''parent@ -> /''
	7@ -> [String] ''topez@ -> nil''
'}}