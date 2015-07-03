private
buildObjectCreationEntries
  self objectCreationTally
    ifFalse: [ ^ self ].
  objCreationCounts := IdentityKeyValueDictionary new.
  (profMonitor results at: 2)
    keysAndValuesDo: [ :k :d | 
      | cls tally |
      cls := k at: 1.
      tally := objCreationCounts
        at: cls
        ifAbsent: [ objCreationCounts at: cls put: 0 ].
      d
        valuesDo: [ :d2 | 
          d2
            valuesDo: [ :e | 
              e cclass isNil
                ifFalse: [ tally := tally + e tally ] ] ].
      objCreationCounts at: cls put: tally ].
  objCreationTallyTotal := 0.
  objCreationClasses := Array new.
  objCreationCounts
    keysAndValuesDo: [ :k :v | 
      objCreationClasses add: (Array with: k with: v).
      objCreationTallyTotal := objCreationTallyTotal + v ].
  objCreationClasses := objCreationClasses
    asSortedCollection: [ :x :y | (x at: 2) > (y at: 2) ].
  objCreationClasses := objCreationClasses collect: [ :x | x at: 1 ]