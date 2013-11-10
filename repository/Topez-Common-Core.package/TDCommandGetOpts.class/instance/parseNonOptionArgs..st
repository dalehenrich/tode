private
parseNonOptionArgs: nonOptionArgsBlock
  | peek nonOptionArgsStream nonOptionArgs |
  nonOptionArgsStream := WriteStream on: String new.
  stream atEnd
    ifTrue: [ ^ self ].
  self skipWhiteSpace.
  stream atEnd
    ifTrue: [ ^ self ].
  peek := stream peek.
  [ peek isSeparator ]
    whileFalse: [ 
      stream next.
      nonOptionArgsStream nextPut: peek.
      stream atEnd
        ifTrue: [ 
          nonOptionArgs := nonOptionArgsStream contents.
          nonOptionArgs isEmpty
            ifFalse: [ 
              nonOptionArgsBlock value: nonOptionArgs.
              ^ self ] ].
      peek := stream peek ].
  nonOptionArgs := nonOptionArgsStream contents.
  nonOptionArgs isEmpty
    ifFalse: [ nonOptionArgsBlock value: nonOptionArgs ].
  self skipWhiteSpace.
  self parseNonOptions: nonOptionArgsBlock