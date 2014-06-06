ol
olview
  "
  ol view  [--inverse] [--reverse|-r] [--age=<duration>] [ <priority>... ]
"

  | args priorities reversed age |
  self
    getSubcommandOptsMixedLongShort:
      {#('age' nil #'required').
      #('inverse' nil #'none').
      #('reverse' $r #'none')}.
  args := subArguments collect: [ :priorityName | priorityName asSymbol ].
  subOptions
    at: 'inverse'
    ifPresent: [ :ignored | 
      priorities := self olPriorities copy.
      priorities removeAll: args ]
    ifAbsent: [ priorities := args ].
  subOptions
    at: 'reverse'
    ifPresent: [ :ignored | reversed := true ]
    ifAbsent: [ reversed := false ].
  priorities := priorities
    collect: [ :priorityName | ObjectLogEntry perform: priorityName ].
  subOptions
    at: 'age'
    ifPresent: [ :durationExpression | age := DateAndTime now - durationExpression evaluate ].
  (TDObjectLogEntryBrowser new
    topez: self topez;
    reversed: reversed;
    objectLogBlock: [ 
          | objectLog |
          System abortTransaction.
          objectLog := objectLog := ObjectLogEntry objectLog.
          age
            ifNotNil: [ objectLog := objectLog select: [ :each | each stamp >= age ] ].
          priorities isEmpty
            ifFalse: [ objectLog := objectLog select: [ :each | priorities includes: each priority ] ].
          objectLog ];
    windowLabel: 'Object log ' , subCommand commandLine printString;
    yourself) open