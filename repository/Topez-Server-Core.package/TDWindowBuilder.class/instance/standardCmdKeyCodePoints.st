accessing
standardCmdKeyCodePoints
  "
	CMD-B - browse (full) class - hiearchy, definition, selectors
	CMD-C - spawn window
	CMD-K
	CMD-L - list windows
	CMD-N - find references
	CMD-b - browse class - globals
	CMD-c - copy selection
	CMD-l - refresh
	CMD-m - implementors
	CMD-n - senders
	CMD-o - new method template
	CMD-p - open print window
	CMD-t - step over
	CMD-u - step into
	CMD-j - continue
	CMD-k
	CMD-v - paste selection
	CMD-x - cut selection
"

  ^ #($B $C $K $L $N $b $c $l $m $n $o $p $t $u $j $k $v $x) collect: [ :char | char codePoint ]