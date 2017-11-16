cls
clscopy: theClass to: newName category: category
  | definition newClass |
  (Smalltalk hasClassNamed: newName)
    ifTrue: [ ^ self error: newName , ' already exists' ].
  definition := theClass
    definitionWithClassName: newName
    superClassName:
      (theClass superClass == nil
        ifTrue: [ 'nil' ]
        ifFalse: [ theClass superClass name ]).
  newClass := self topez createClassFrom: definition.
  newClass
    copyMethodsFrom: theClass
      dictionaries: self applicationEnvironment methodCompilationSymbolList;
    classComment: theClass classComment;
    category: category.
  ^ newClass