private
parseLongOptionName
  | peek endBlock optionNameStream |
  optionNameStream := WriteStream on: String new.
  endBlock := [ optionNameStream contents ].
  stream atEnd
    ifTrue: [ ^ endBlock value ].
  peek := stream peek.
  [ peek isSeparator or: [ peek == $= ] ]
    whileFalse: [ 
      stream next.
      optionNameStream nextPut: peek.
      stream atEnd
        ifTrue: [ ^ endBlock value ].
      peek := stream peek ].
  ^ endBlock value