writing
writeOperations: operations
  (operations asSortedCollection: [ :a :b | (a at: 1) <= (b at: 1) ])
    do: [ :ar | 
      (ar at: 2) = 'removal'
        ifTrue: [ self writeRemoval: ar ].
      (ar at: 2) = 'addition'
        ifTrue: [ self writeAddition: ar ].
      (ar at: 2) = 'modification'
        ifTrue: [ self writeModification: ar ].
      stream cr ]