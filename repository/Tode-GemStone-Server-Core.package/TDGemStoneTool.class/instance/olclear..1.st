ol
olclear
  "
  ol clear  [--inverse]  [--age=<duration>] [ <priority>... ]
"

  | args priorities age objectLog |
  self
    getSubcommandOptsMixedLongShort:
      {#('age' nil #'required').
      #('inverse' nil #'none')}.
  args := subArguments collect: [ :priorityName | priorityName asSymbol ].
  subOptions
    at: 'inverse'
    ifPresent: [ :ignored | 
      priorities := self olPriorities copy.
      priorities removeAll: args ]
    ifAbsent: [ priorities := args ].
  subOptions
    at: 'age'
    ifPresent: [ :durationExpression | age := DateAndTime now - durationExpression evaluate ].
  priorities := args
    collect: [ :priorityName | ObjectLogEntry perform: priorityName ].
  self olClear: priorities age: age.
  ^ true