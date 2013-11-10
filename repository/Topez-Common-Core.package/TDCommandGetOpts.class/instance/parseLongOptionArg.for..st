private
parseLongOptionArg: required for: opt
  | peek endBlock optionArgStream |
  optionArgStream := WriteStream on: String new.
  endBlock := [ 
  | optArg |
  optArg := optionArgStream contents.
  optArg isEmpty
    ifTrue: [ 
      required
        ifTrue: [ self error: 'Missing required argument for option: ' , opt asString ]
        ifFalse: [ ^ nil ] ].
  optArg ].
  stream atEnd
    ifTrue: [ ^ endBlock value ].
  peek := stream peek.
  peek == $=
    ifFalse: [ ^ endBlock value ].
  stream next.
  stream atEnd
    ifTrue: [ ^ endBlock value ].
  peek := stream peek.
  [ peek isSeparator ]
    whileFalse: [ 
      stream next.
      optionArgStream nextPut: peek.
      stream atEnd
        ifTrue: [ ^ endBlock value ].
      peek := stream peek ].
  ^ endBlock value