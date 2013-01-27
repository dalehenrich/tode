as yet unclassified
cmdKeyCodePoints
  "
	CMD-B - browse (full) class - hiearchy, definition, selectors
	CMD-C - spawn window
	CMD-L - list windows
	CMD-N - find references
	CMD-b - browse class - globals
	CMD-c - copy selection
	CMD-l - refresh
	CMD-p - open print window
	CMD-v - paste selection
	CMD-x - cut selection
"

  ^ #($B $C $L $N $b $c $l $p $v $x) collect: [ :char | char codePoint ]