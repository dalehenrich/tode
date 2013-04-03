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
      'anArray( ''.         -> /d//'', ''(class)@  -> TDTxtLeafNode'', ''contents@ -> This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g)'', ''name@     -> ''''d'''''', ''parent@   -> /'', ''topez@    -> nil'')/ ([Array] anArray( ''. -> /d//'', ''(class)@ -> TDTxtLeafNode'', ''contents@ -> This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g)'', ''n...):
	(class)@ -> [Array class] Array
	1@ -> [String] ''. -> /d//''
	2@ -> [String] ''(class)@ -> TDTxtLeafNode''
	3@ -> [String] ''contents@ -> This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g)''
	4@ -> [String] ''name@ -> ''''d''''''
	5@ -> [String] ''parent@ -> /''
	6@ -> [String] ''topez@ -> nil''
'}.
      {(self directoryNodeStructure childNamed: 'e' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.         -> /e//'', ''(class)@  -> TDTxtLeafNode'', ''contents@ -> ''''This is a string'''''', ''name@     -> ''''e'''''', ''parent@   -> /'', ''topez@    -> nil'')/ ([Array] anArray( ''. -> /e//'', ''(class)@ -> TDTxtLeafNode'', ''contents@ -> ''''This is a string'''''', ''name@ -> ''''e'''''', ''parent@ -> /'', ''topez@ -> nil'')):
	(class)@ -> [Array class] Array
	1@ -> [String] ''. -> /e//''
	2@ -> [String] ''(class)@ -> TDTxtLeafNode''
	3@ -> [String] ''contents@ -> ''''This is a string''''''
	4@ -> [String] ''name@ -> ''''e''''''
	5@ -> [String] ''parent@ -> /''
	6@ -> [String] ''topez@ -> nil''
'}}