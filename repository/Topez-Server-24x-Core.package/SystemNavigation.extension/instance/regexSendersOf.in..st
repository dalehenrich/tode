*topez-server-24x-core
regexSendersOf: aRegex in: aclassSet
  "Returns an Array of GsMethods that send a message matchint <aRegex>  "

  | result cset cls |
  result := Array new.
  (aclassSet isKindOf: ClassSet)
    ifFalse: [ cset := ClassSet withAll: aclassSet ]
    ifTrue: [ cset := aclassSet ].
  cset := cset sortAscending.
  1 to: cset size do: [ :i | 
    cls := cset at: i.
    {(cls _methodDict).
    (cls class _methodDict)}
      do: [ :methodDict | 
        methodDict
          valuesDo: [ :gsMethod | 
            | res |
            res := gsMethod _selectorPool
              detect: [ :sel | aRegex search: sel asString ]
              ifNone: [ nil ].
            res
              ifNil: [ 
                res := gsMethod literals
                  detect: [ :lit | 
                    lit isString
                      ifTrue: [ aRegex search: lit asString ]
                      ifFalse: [ 
                        (lit isKindOf: Association)
                          ifTrue: [ aRegex search: lit key asString ]
                          ifFalse: [ false ] ] ]
                  ifNone: [ nil ] ].
            res ~~ nil
              ifTrue: [ result add: gsMethod ] ] ] ].
  ^ result