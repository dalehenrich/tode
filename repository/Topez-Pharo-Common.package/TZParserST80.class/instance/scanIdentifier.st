parse
scanIdentifier
  | c start |
  start    := sourcePosition.
  [ 
  ((((c := self nextChar) isAlphaNumeric or: [c ==$*]) or: [ c == $_ ])
    or: [ 
      c == $.
        and: [ |peek|
          peek := self peekChar.
			
			peek isAlphaNumeric or: [peek == $*] ]])   ] whileTrue.
  (c == $: and: [ (self isSelectorCharacter: self peekChar) not ])
    ifTrue: [ self nextChar ].
  currentToken := source copyFrom: start to: sourcePosition - 1.
  currentTokenSourcePosition := start