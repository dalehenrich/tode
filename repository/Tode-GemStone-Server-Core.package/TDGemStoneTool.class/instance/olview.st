ol
olview
  "
  ol view  [--inverse] [--reverse|-r] [--age=<duration>] [--pid=<pid>] 
           [ <priority>... ]
"

  | args priorities reversed age pid |
  self
    getSubcommandOptsMixedLongShort:
      {#('age' nil #'required').
      #('inverse' nil #'none').
      #('pid' nil #'required').
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
  subOptions at: 'pid' ifPresent: [ :arg | pid := arg asNumber ].
  (TDObjectLogEntryBrowser new
    topez: self topez;
    reversed: reversed;
    objectLogBlock: [ 
          | objectLog |
          System commitTransaction.
          objectLog := objectLog := ObjectLogEntry objectLog.
          pid
            ifNotNil: [ objectLog := objectLog select: [ :each | each pid = pid ] ].
          age
            ifNotNil: [ objectLog := objectLog select: [ :each | each stamp >= age ] ].
          priorities isEmpty
            ifFalse: [ objectLog := objectLog select: [ :each | priorities includes: each priority ] ].
          objectLog ];
    windowLabel: 'Object log ' , subCommand commandLine printString;
    yourself) open