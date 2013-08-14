as yet unclassified
renameclass: oldName to: newName
  | oldClass oldDefinition newClass |
  oldClass := Smalltalk
    at: oldName asSymbol
    ifAbsent: [ ^ self error: 'Class ' , oldName , ' does not exist' ].
  (Smalltalk hasClassNamed: newName)
    ifTrue: [ ^ self error: newName , ' already exists' ].
  oldDefinition := oldClass
    definitionWithClassName: newName
    superClassName:
      (oldClass superClass == nil
        ifTrue: [ 'nil' ]
        ifFalse: [ oldClass superClass name ]).
  newClass := oldDefinition evaluate.
  newClass
    copyMethodsFrom: oldClass
    dictionaries: GsSession currentSession symbolList.
  newClass classComment: oldClass classComment.
  oldClass subclasses
    do: [ :subClass | 
      | def |
      "change the superclass for all subclasses"
      def := subClass
        definitionWithClassName: subClass name
        superClassName: newName.
      def evaluate ].
  oldClass removeFromSystem
    ifFalse: [ ^ self error: oldClass name , ' not removed' ].
  self topez resetAllGlobalNames