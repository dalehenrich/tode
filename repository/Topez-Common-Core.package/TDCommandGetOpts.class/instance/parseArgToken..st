private
parseArgToken: tokenBlock
  | peek tokenStream escaped atEndBlock |
  tokenStream := WriteStream on: String new.
  atEndBlock := [ 
  stream atEnd
    ifTrue: [ 
      tokenBlock value: tokenStream contents.
      ^ self ] ].
  self skipWhiteSpace.
  atEndBlock value.
  peek := stream peek.
  escaped := peek == $`.
  escaped
    ifTrue: [ 
      stream next.
      atEndBlock value.
      peek := stream peek ].
  [ escaped or: [ peek isSeparator not ] ]
    whileTrue: [ 
      tokenStream nextPut: peek.
      stream next.
      atEndBlock value.
      peek := stream peek.
      peek == $`
        ifTrue: [ 
          escaped := escaped not.
          stream next.
          atEndBlock value.
          peek := stream peek ] ].
  tokenBlock value: tokenStream contents