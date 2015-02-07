ol
olClear: priorities age: aDateAndTimeOrNil continuations: continuations
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
  (priorities isEmpty and: [ continuations not ])
    ifTrue: [ 
      "clear all - most efficient to simply reset the collections"
      ObjectLogEntry initialize.
      ^ true ].
  objectLog := ObjectLogEntry objectLog.
  objectLog copy
    do: [ :entry | 
      ((priorities includes: entry priority)
        or: [ priorities isEmpty and: [ continuations ] ])
        ifTrue: [ 
          ((continuations and: [ entry hasContinuation ]) or: [ continuations not ])
            ifTrue: [ 
              aDateAndTimeOrNil
                ifNil: [ objectLog remove: entry ]
                ifNotNil: [ 
                  objectLog stamp < aDateAndTimeOrNil
                    ifTrue: [ objectLog remove: entry ] ] ] ] ]