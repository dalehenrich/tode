private
argsSize
  | argsSize |
  argsSize := self unsignedLongAt: 101.
  10 < argsSize
    ifTrue: [ self error: 'Argument count too high: ' , argsSize printString ].
  ^ argsSize