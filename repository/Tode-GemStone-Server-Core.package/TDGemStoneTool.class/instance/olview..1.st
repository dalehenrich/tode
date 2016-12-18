ol
olview
  "
  ol view  [--inverse] [--reverse|-r] [--age=<duration>] [--pid=<pid>] [--continuation] \
           [--tag=<tag-block>] [ <priority>... ]"

  | args priorities reversed age pid continuations tagBlock |
  self getSubcommandOptsMixedLongShort: {#('age' nil #'required').
      #('continuation' nil #'none').
      #('inverse' nil #'none').
      #('pid' nil #'required').
      #('tag' nil #'required').
      #('reverse' $r #'none')}.
  args := subArguments collect: [ :priorityName | priorityName asSymbol ].
  subOptions
    at: 'inverse'
    ifPresent: [ :ignored | priorities := self olPriorities copy.
      priorities removeAll: args ]
    ifAbsent: [ priorities := args ].
  subOptions
    at: 'reverse'
    ifPresent: [ :ignored | reversed := true ]
    ifAbsent: [ reversed := false ].
  subOptions
    at: 'continuation'
    ifPresent: [ :ignored | continuations := true ]
    ifAbsent: [ continuations := false ].
  priorities := priorities
    collect: [ :priorityName | ObjectLogEntry perform: priorityName ].
  subOptions
    at: 'age'
    ifPresent: [ :durationExpression | age := DateAndTime now - durationExpression evaluate ].
  subOptions
    at: 'tag'
    ifPresent: [ :tagBlockArg | tagBlock := tagBlockArg evaluate ].
  subOptions at: 'pid' ifPresent: [ :arg | pid := arg asNumber ].
  self olView: [ | objectLog |
      System commitTransaction.
      objectLog := ObjectLogEntry objectLog.
      pid
        ifNotNil: [ objectLog := objectLog select: [ :each | each pid = pid ] ].
      age
        ifNotNil: [ objectLog := objectLog select: [ :each | each stamp >= age ] ].
      priorities isEmpty
        ifFalse: [ objectLog := objectLog select: [ :each | priorities includes: each priority ] ].
      continuations
        ifTrue: [ objectLog := objectLog select: [ :each | each hasContinuation ] ].
      tagBlock
        ifNotNil: [ objectLog := objectLog select: [ :each | tagBlock value: each tag ] ].
      objectLog ] reversed: reversed label:
    'Object log ' , subCommand commandLine printString