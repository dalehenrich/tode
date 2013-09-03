accessing
operations
  operations ifNil: [ operations := self createOperationsList ].
  ^ operations