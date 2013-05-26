as yet unclassified
rawLiteralReference: literal in: aClassOrNil
  | aCollection classes env |
  aCollection := OrderedCollection new.	"class vars."
  env := aClassOrNil ifNil: [ Smalltalk globals ].
  env isBehavior
    ifTrue: [ 
      classes := ClassSet new.
      classes addAll: env theNonMetaClass withAllSuperclasses ]
    ifFalse: [ classes := Smalltalk classOrganizer classes ].
  (Smalltalk classOrganizer referencesToObject: literal in: classes)
    do: [ :method | 
      aCollection
        add: (MethodReference class: method inClass selector: method selector) ].
  ^ aCollection