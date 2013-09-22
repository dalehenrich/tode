as yet unclassified
clscopy: clsName to: newName
  | oldClass definition newClass |
  oldClass := Smalltalk classNamed: clsName.
  (Smalltalk hasClassNamed: newName)
    ifTrue: [ ^ self error: newName , ' already exists' ].
  definition := oldClass
    definitionWithClassName: newName
    superClassName:
      (oldClass superClass == nil
        ifTrue: [ 'nil' ]
        ifFalse: [ oldClass superClass name ]).
  newClass := definition evaluate.
  newClass
    copyMethodsFrom: oldClass
    dictionaries: GsSession currentSession symbolList.
  newClass classComment: oldClass classComment.
  ^ newClass