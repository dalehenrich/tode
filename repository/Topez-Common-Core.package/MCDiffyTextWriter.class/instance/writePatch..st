as yet unclassified
writePatch: aPatch
  aPatch operations asSortedCollection
    do: [ :ea | 
      ea isRemoval
        ifTrue: [ 
          self writeRemoval: ea.
          stream cr ].
      ea isAddition
        ifTrue: [ 
          self writeAddition: ea.
          stream cr ].
      ea isModification
        ifTrue: [ 
          self writeModification: ea.
          stream cr ] ]