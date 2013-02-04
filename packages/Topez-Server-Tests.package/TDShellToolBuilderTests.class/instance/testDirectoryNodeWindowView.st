as yet unclassified
testDirectoryNodeWindowView
  "object aspect windowId expected"

  self
    executeWindowBuilderSpecs:
      {{(self directoryNodeStructure).
      #'view'.
      nil.
      'anArray( ''.      -> /'', ''a*     -> ''''[ :topez :tokens :windowId | ]'''''', ''b*     -> ''''3+4'''''', ''c*     -> ''''cat /home/.window/model'''''', ''d      -> This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g)'', ''e      -> ''''This is a string'''''')/ ([Array] anArray( ''. -> /'', ''a* -> ''''[ :topez :tokens :windowId | ]'''''', ''b* -> ''''3+4'''''', ''c* -> ''''cat /home/.window/model'''''', ''d -> This is a strin...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> /''
	2@ -> [String] ''a* -> ''''[ :topez :tokens :windowId | ]''''''
	3@ -> [String] ''b* -> ''''3+4''''''
	4@ -> [String] ''c* -> ''''cat /home/.window/model''''''
	5@ -> [String] ''d -> This is a string( $T, $h, $i, $s, $ , $i, $s, $ , $a, $ , $s, $t, $r, $i, $n, $g)''
	6@ -> [String] ''e -> ''''This is a string''''''
'}.
      {(self directoryNodeStructure asTDObjectNode: nil topez: self topez aspect: #'view').
      #'view'.
      nil.
      'anArray( ''.         -> //'', ''(class)@  -> TDDirectoryNode'', ''(value)@  -> ''''aTDDirectoryNode'''''', ''aspect@   -> nil'', ''contents@ -> aDictionary( ''''a''''->/a/, ''''d''''->/d/, ''''b''''->/b/, ''''c''''->/c/, ''''e''''->/e/)'', ''name@     -> nil'', ''parent@   -> nil'', ''readMe@   -> nil'', ''topez@    -> nil'')/ ([Array] anArray( ''. -> //'', ''(class)@ -> TDDirectoryNode'', ''(value)@ -> ''''aTDDirectoryNode'''''', ''aspect@ -> nil'', ''contents@ -> aDictionary( ''''a''''->/a/, ''''d''...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> //''
	2@ -> [String] ''(class)@ -> TDDirectoryNode''
	3@ -> [String] ''(value)@ -> ''''aTDDirectoryNode''''''
	4@ -> [String] ''aspect@ -> nil''
	5@ -> [String] ''contents@ -> aDictionary( ''''a''''->/a/, ''''d''''->/d/, ''''b''''->/b/, ''''c''''->/c/, ''''e''''->/e/)''
	6@ -> [String] ''name@ -> nil''
	7@ -> [String] ''parent@ -> nil''
	8@ -> [String] ''readMe@ -> nil''
	9@ -> [String] ''topez@ -> nil''
'}.
      {(self directoryNodeStructure childNamed: 'a' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.         -> /a//'', ''(class)@  -> TDScriptLeafNode'', ''(value)@  -> ''''aTDScriptLeafNode'''''', ''block@    -> nil'', ''contents@ -> nil'', ''manPage@  -> nil'', ''name@     -> ''''a'''''', ''parent@   -> /'', ''topez@    -> nil'')/ ([Array] anArray( ''. -> /a//'', ''(class)@ -> TDScriptLeafNode'', ''(value)@ -> ''''aTDScriptLeafNode'''''', ''block@ -> nil'', ''contents@ -> nil'', ''manPage@ -> nil'',...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> /a//''
	2@ -> [String] ''(class)@ -> TDScriptLeafNode''
	3@ -> [String] ''(value)@ -> ''''aTDScriptLeafNode''''''
	4@ -> [String] ''block@ -> nil''
	5@ -> [String] ''contents@ -> nil''
	6@ -> [String] ''manPage@ -> nil''
	7@ -> [String] ''name@ -> ''''a''''''
	8@ -> [String] ''parent@ -> /''
	9@ -> [String] ''topez@ -> nil''
'}.
      {(self directoryNodeStructure childNamed: 'b' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.         -> /b//'', ''(class)@  -> TDSmalltalkLeafNode'', ''(value)@  -> ''''aTDSmalltalkLeafNode'''''', ''contents@ -> ''''3+4'''''', ''manPage@  -> nil'', ''name@     -> ''''b'''''', ''parent@   -> /'', ''topez@    -> nil'')/ ([Array] anArray( ''. -> /b//'', ''(class)@ -> TDSmalltalkLeafNode'', ''(value)@ -> ''''aTDSmalltalkLeafNode'''''', ''contents@ -> ''''3+4'''''', ''manPage@ -> nil'', ''name@ ...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> /b//''
	2@ -> [String] ''(class)@ -> TDSmalltalkLeafNode''
	3@ -> [String] ''(value)@ -> ''''aTDSmalltalkLeafNode''''''
	4@ -> [String] ''contents@ -> ''''3+4''''''
	5@ -> [String] ''manPage@ -> nil''
	6@ -> [String] ''name@ -> ''''b''''''
	7@ -> [String] ''parent@ -> /''
	8@ -> [String] ''topez@ -> nil''
'}.
      {(self directoryNodeStructure childNamed: 'c' ifAbsent: [  ]).
      #'view'.
      nil.
      'anArray( ''.         -> /c//'', ''(class)@  -> TDTopezLeafNode'', ''(value)@  -> ''''aTDTopezLeafNode'''''', ''contents@ -> ''''cat /home/.window/model'''''', ''manPage@  -> nil'', ''name@     -> ''''c'''''', ''parent@   -> /'', ''topez@    -> nil'')/ ([Array] anArray( ''. -> /c//'', ''(class)@ -> TDTopezLeafNode'', ''(value)@ -> ''''aTDTopezLeafNode'''''', ''contents@ -> ''''cat /home/.window/model'''''', ''manPage@ -> nil...):
	(class)@ -> [Array class] Array
	(value)@ -> [String] ''anArray''
	1@ -> [String] ''. -> /c//''
	2@ -> [String] ''(class)@ -> TDTopezLeafNode''
	3@ -> [String] ''(value)@ -> ''''aTDTopezLeafNode''''''
	4@ -> [String] ''contents@ -> ''''cat /home/.window/model''''''
	5@ -> [String] ''manPage@ -> nil''
	6@ -> [String] ''name@ -> ''''c''''''
	7@ -> [String] ''parent@ -> /''
	8@ -> [String] ''topez@ -> nil''
'}}