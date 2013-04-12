as yet unclassified
testTxtLeafNodeView
  "Text/String clientElements store contents as STON version of String or Text"

  self
    executeWindowBuilderSpecs:
      {{(self directoryNodeStructure childNamed: 'd' ifAbsent: [  ]).
      #'edit'.
      nil.
      '''Text{#string:''''This is a string'''',#runs:RunArray{#runs:[16],#values:[[TextEmphasis{#emphasisCode:0,#setMode:true},TextEmphasis{#emphasisCode:1,#setMode:true}]],#lastIndex:nil,#lastRun:nil,#lastOffset:nil}}''/ ([String] ''Text{#string:''''This is a string'''',#runs:RunArray{#runs:[16],#values:[[TextEmphasis{#emphasisCode:0,#setMode:true},TextEmphasis{#emphasisCode:1,#setMode:true}]]...):
	(class)@ -> [String class] String
	1@ -> [Character] $T
	2@ -> [Character] $e
	3@ -> [Character] $x
	4@ -> [Character] $t
	5@ -> [Character] ${
	6@ -> [Character] $#
	7@ -> [Character] $s
	8@ -> [Character] $t
	9@ -> [Character] $r
	10@ -> [Character] $i
	11@ -> [Character] $n
	12@ -> [Character] $g
	13@ -> [Character] $:
	14@ -> [Character] $''
	15@ -> [Character] $T
	16@ -> [Character] $h
	17@ -> [Character] $i
	18@ -> [Character] $s
	19@ -> [Character] $ 
	20@ -> [Character] $i
	21@ -> [Character] $s
	22@ -> [Character] $ 
	23@ -> [Character] $a
	24@ -> [Character] $ 
	25@ -> [Character] $s
	26@ -> [Character] $t
	27@ -> [Character] $r
	28@ -> [Character] $i
	29@ -> [Character] $n
	30@ -> [Character] $g
	31@ -> [Character] $''
	32@ -> [Character] $,
	33@ -> [Character] $#
	34@ -> [Character] $r
	35@ -> [Character] $u
	36@ -> [Character] $n
	37@ -> [Character] $s
	38@ -> [Character] $:
	39@ -> [Character] $R
	40@ -> [Character] $u
	41@ -> [Character] $n
	42@ -> [Character] $A
	43@ -> [Character] $r
	44@ -> [Character] $r
	45@ -> [Character] $a
	46@ -> [Character] $y
	47@ -> [Character] ${
	48@ -> [Character] $#
	49@ -> [Character] $r
	50@ -> [Character] $u
	51@ -> [Character] $n
	52@ -> [Character] $s
	53@ -> [Character] $:
	54@ -> [Character] $[
	55@ -> [Character] $1
	56@ -> [Character] $6
	57@ -> [Character] $]
	58@ -> [Character] $,
	59@ -> [Character] $#
	60@ -> [Character] $v
	61@ -> [Character] $a
	62@ -> [Character] $l
	63@ -> [Character] $u
	64@ -> [Character] $e
	65@ -> [Character] $s
	66@ -> [Character] $:
	67@ -> [Character] $[
	68@ -> [Character] $[
	69@ -> [Character] $T
	70@ -> [Character] $e
	71@ -> [Character] $x
	72@ -> [Character] $t
	73@ -> [Character] $E
	74@ -> [Character] $m
	75@ -> [Character] $p
	76@ -> [Character] $h
	77@ -> [Character] $a
	78@ -> [Character] $s
	79@ -> [Character] $i
	80@ -> [Character] $s
	81@ -> [Character] ${
	82@ -> [Character] $#
	83@ -> [Character] $e
	84@ -> [Character] $m
	85@ -> [Character] $p
	86@ -> [Character] $h
	87@ -> [Character] $a
	88@ -> [Character] $s
	89@ -> [Character] $i
	90@ -> [Character] $s
	91@ -> [Character] $C
	92@ -> [Character] $o
	93@ -> [Character] $d
	94@ -> [Character] $e
	95@ -> [Character] $:
	96@ -> [Character] $0
	97@ -> [Character] $,
	98@ -> [Character] $#
	99@ -> [Character] $s
	100@ -> [Character] $e
	101@ -> [Character] $t
	102@ -> [Character] $M
	103@ -> [Character] $o
	104@ -> [Character] $d
	105@ -> [Character] $e
	106@ -> [Character] $:
	107@ -> [Character] $t
	108@ -> [Character] $r
	109@ -> [Character] $u
	110@ -> [Character] $e
	111@ -> [Character] $}
	112@ -> [Character] $,
	113@ -> [Character] $T
	114@ -> [Character] $e
	115@ -> [Character] $x
	116@ -> [Character] $t
	117@ -> [Character] $E
	118@ -> [Character] $m
	119@ -> [Character] $p
	...
'}.
      {(self directoryNodeStructure childNamed: 'e' ifAbsent: [  ]).
      #'edit'.
      nil.
      '''''''This is a string''''''/ ([String] ''''''This is a string''''''):
	(class)@ -> [String class] String
	1@ -> [Character] $''
	2@ -> [Character] $T
	3@ -> [Character] $h
	4@ -> [Character] $i
	5@ -> [Character] $s
	6@ -> [Character] $ 
	7@ -> [Character] $i
	8@ -> [Character] $s
	9@ -> [Character] $ 
	10@ -> [Character] $a
	11@ -> [Character] $ 
	12@ -> [Character] $s
	13@ -> [Character] $t
	14@ -> [Character] $r
	15@ -> [Character] $i
	16@ -> [Character] $n
	17@ -> [Character] $g
	18@ -> [Character] $''
'}.
      {(self directoryNodeStructure childNamed: 'd' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.              -> /d/'', ''(class)@       -> TDTxtLeafNode'', ''builderAspect@ -> nil'', ''contents@      -> This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g)'', ''name@          -> ''''d'''''', ''parent@        -> /'', ''topez@         -> nil'')/ ([Array] anArray( ''. -> /d/'', ''(class)@ -> TDTxtLeafNode'', ''builderAspect@ -> nil'', ''contents@ -> This is a string( $T, $h, $i, $s, $ , $i, $s, $...):
	(class)@ -> [Array class] Array
	1@ -> [String] ''. -> /d/''
	2@ -> [String] ''(class)@ -> TDTxtLeafNode''
	3@ -> [String] ''builderAspect@ -> nil''
	4@ -> [String] ''contents@ -> This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g)''
	5@ -> [String] ''name@ -> ''''d''''''
	6@ -> [String] ''parent@ -> /''
	7@ -> [String] ''topez@ -> nil''
'}.
      {(self directoryNodeStructure childNamed: 'e' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.              -> /e/'', ''(class)@       -> TDTxtLeafNode'', ''builderAspect@ -> nil'', ''contents@      -> ''''This is a string'''''', ''name@          -> ''''e'''''', ''parent@        -> /'', ''topez@         -> nil'')/ ([Array] anArray( ''. -> /e/'', ''(class)@ -> TDTxtLeafNode'', ''builderAspect@ -> nil'', ''contents@ -> ''''This is a string'''''', ''name@ -> ''''e''''...):
	(class)@ -> [Array class] Array
	1@ -> [String] ''. -> /e/''
	2@ -> [String] ''(class)@ -> TDTxtLeafNode''
	3@ -> [String] ''builderAspect@ -> nil''
	4@ -> [String] ''contents@ -> ''''This is a string''''''
	5@ -> [String] ''name@ -> ''''e''''''
	6@ -> [String] ''parent@ -> /''
	7@ -> [String] ''topez@ -> nil''
'}}