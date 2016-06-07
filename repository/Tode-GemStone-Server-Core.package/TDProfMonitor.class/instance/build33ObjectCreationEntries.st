private
build33ObjectCreationEntries
  objectCreationMethodToClassMap := IdentityKeyValueDictionary new.
  objectCreationClassToMethodMap := IdentityKeyValueDictionary new.
  objCreationCounts := IdentityKeyValueDictionary new.
  (profMonitor results at: 2)
    keysAndValuesDo: [ :k :d | 
      | cls tally |
      cls := k at: 1.
      cls
        ifNotNil: [ 
          tally := objCreationCounts
            at: cls
            ifAbsent: [ objCreationCounts at: cls put: 0 ].
          d
            valuesDo: [ :d2 | 
              d2
                valuesDo: [ :e | 
                  (e perform: #'cclass') isNil
                    ifFalse: [ tally := tally + e tally ].
                  (objectCreationMethodToClassMap
                    at: e cmethod
                    ifAbsent: [ objectCreationMethodToClassMap at: e cmethod put: IdentitySet new ])
                    add: cls.
                  false
                    ifTrue: [ 
                      (objectCreationClassToMethodMap
                        at: cls
                        ifAbsent: [ objectCreationClassToMethodMap at: cls put: IdentitySet new ])
                        add: e cmethod ] ] ].
          objCreationCounts at: cls put: tally ] ].
  objCreationTallyTotal := 0.
  objCreationClasses := Array new.
  objCreationCounts
    keysAndValuesDo: [ :k :v | 
      objCreationClasses add: (Array with: k with: v).
      objCreationTallyTotal := objCreationTallyTotal + v ].
  objCreationClasses := objCreationClasses
    asSortedCollection: [ :x :y | (x at: 2) > (y at: 2) ].
  objCreationClasses := objCreationClasses collect: [ :x | x at: 1 ]