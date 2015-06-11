ol
olclear
  "
  ol clear  [--inverse]  [--age=<duration>] [--continuation] [ <priority>... ]
"

  | args priorities age objectLog continuations |
  self
    getSubcommandOptsMixedLongShort:
      {#('age' nil #'required').
      #('continuation' nil #'none').
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
  subOptions
    at: 'continuation'
    ifPresent: [ :ignored | continuations := true ]
    ifAbsent: [ continuations := false ].
  priorities := args
    collect: [ :priorityName | ObjectLogEntry perform: priorityName ].
  self olClear: priorities age: age continuations: continuations.
  ^ true