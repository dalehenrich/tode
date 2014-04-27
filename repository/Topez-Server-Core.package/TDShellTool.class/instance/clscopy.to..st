cls
clscopy: theClass to: newName
  | definition newClass |
  (Smalltalk hasClassNamed: newName)
    ifTrue: [ ^ self error: newName , ' already exists' ].
  definition := theClass
    definitionWithClassName: newName
    superClassName:
      (theClass superClass == nil
        ifTrue: [ 'nil' ]
        ifFalse: [ theClass superClass name ]).
  newClass := definition evaluate.
  newClass
    copyMethodsFrom: theClass
    dictionaries: GsSession currentSession symbolList.
  newClass classComment: theClass classComment.
  ^ newClass