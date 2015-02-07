ol
olClear: priorities age: aDateAndTimeOrNil
  "priorities:
    debug
    error
    fatal
    info
    interaction
    trace
    transcript
    warn
"

  | objectLog |
  priorities isEmpty
    ifTrue: [ 
      "clear all - most efficient to simply reset the collections"
      ObjectLogEntry initialize.
      ^ true ].
  objectLog := ObjectLogEntry objectLog.
  objectLog copy
    do: [ :entry | 
      (priorities includes: entry priority)
        ifTrue: [ 
          aDateAndTimeOrNil
            ifNil: [ objectLog remove: entry ]
            ifNotNil: [ 
              objectLog stamp < aDateAndTimeOrNil
                ifTrue: [ objectLog remove: entry ] ] ] ]