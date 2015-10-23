cls
clscreate: newName subclassOf: superClass category: category
  | newClass |
  (Smalltalk hasClassNamed: newName)
    ifTrue: [ ^ self error: newName , ' already exists' ].
  GsDeployer
    bulkMigrate: [ 
      newClass := superClass
        subclass: newName
        instanceVariableNames: ''
        classVariableNames: ''
        poolDictionaries: ''
        category: category ].
  self topez resetAllGlobalNames.
  ^ newClass