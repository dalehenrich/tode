private
parseOptionArg: required for: opt
  | emptyTokenBlock peek |
  emptyTokenBlock := [ 
  required
    ifTrue: [ self error: 'Missing required argument for option: ' , opt asString ]
    ifFalse: [ nil ] ].
  stream atEnd
    ifTrue: [ ^ emptyTokenBlock value ].
  peek := stream peek.
  peek isSeparator
    ifTrue: [ 
      self skipWhiteSpace.
      stream atEnd
        ifTrue: [ ^ emptyTokenBlock value ].
      peek := stream peek ]
    ifFalse: [ 
      required
        ifFalse: [ ^ nil ] ].
  peek == $-
    ifTrue: [ ^ emptyTokenBlock value ].
  self
    parseArgToken: [ :token | 
      token isEmpty
        ifTrue: [ ^ emptyTokenBlock value ].
      ^ token ]