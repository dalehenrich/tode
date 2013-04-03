accessing
argsSize
  | argsSize |
  argsSize := self unsignedLongAt: 109.
  10 < argsSize
    ifTrue: [ self error: 'Argument count too high: ' , argsSize printString ].
  ^ argsSize