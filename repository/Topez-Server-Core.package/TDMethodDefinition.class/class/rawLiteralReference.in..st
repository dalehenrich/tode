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
  ((Smalltalk classOrganizer referencesToLiteral: literal in: classes) at: 1)
    do: [ :method | 
      aCollection
        add: (MethodReference class: method inClass selector: method selector) ].
  ^ aCollection