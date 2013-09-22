as yet unclassified
clscreate
  "
  cls create <class-name> <superclass-name> <category>
      create <class-name> @<superclass-path> <category>
"

  | clsName category superclassName superClass |
  clsName := tokens at: 2.
  superclassName := tokens at: 3.
  superClass := (superclassName beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: superclassName ]
    ifFalse: [ Smalltalk classNamed: superclassName ].
  category := tokens at: 4.
  ^ self clscreate: clsName superClass: superClass category: category