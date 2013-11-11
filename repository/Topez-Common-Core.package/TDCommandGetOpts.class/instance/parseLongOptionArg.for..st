private
parseLongOptionArg: required for: opt
  | emptyTokenBlock peek |
  emptyTokenBlock := [ 
  required
    ifTrue: [ self error: 'Missing required argument for option: ' , opt asString ]
    ifFalse: [ nil ] ].
  stream atEnd
    ifTrue: [ ^ emptyTokenBlock value ].
  peek := stream peek.
  peek == $=
    ifFalse: [ ^ emptyTokenBlock value ].
  stream next.
  stream atEnd
    ifTrue: [ ^ emptyTokenBlock value ].
  peek := stream peek.
  self
    parseArgToken: [ :token | 
      token isEmpty
        ifTrue: [ ^ emptyTokenBlock value ].
      ^ token ]