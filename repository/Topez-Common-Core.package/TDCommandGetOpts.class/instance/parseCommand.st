private
parseCommand
  | char cmdStream |
  stream atEnd
    ifTrue: [ ^ '' ].
  char := stream next.
  char isLetter
    ifFalse: [ ^ '' ].
  cmdStream := WriteStream on: String new.
  cmdStream nextPut: char.
  [ true ]
    whileTrue: [ 
      stream atEnd
        ifTrue: [ ^ cmdStream contents ].
      char := stream next.
      char isAlphaNumeric
        ifFalse: [ ^ cmdStream contents ].
      cmdStream nextPut: char ]