private
skipWhiteSpace
  | peekChar |
  stream atEnd
    ifTrue: [ ^ self ].
  peekChar := stream peek.
  [ peekChar isSeparator ]
    whileTrue: [ 
      stream next.
      stream atEnd
        ifTrue: [ ^ self ].
      peekChar := stream peek ].
  ^ self