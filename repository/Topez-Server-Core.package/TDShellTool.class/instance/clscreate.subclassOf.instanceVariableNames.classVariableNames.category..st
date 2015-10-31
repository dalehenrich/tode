cls
clscreate: newName subclassOf: superClass instanceVariableNames: instanceVariableNames classVariableNames: classVariableNames category: category
  | newClass |
  (Smalltalk hasClassNamed: newName)
    ifTrue: [ ^ self error: newName , ' already exists' ].
  GsDeployer
    bulkMigrate: [ 
      newClass := superClass
        subclass: newName
        instanceVariableNames: instanceVariableNames
        classVariableNames: classVariableNames
        poolDictionaries: ''
        category: category ].
  self topez resetAllGlobalNames.
  ^ newClass