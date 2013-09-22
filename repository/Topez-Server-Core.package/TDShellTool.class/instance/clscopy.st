as yet unclassified
clscopy
  "
  cls copy <class-name> <new-name>
      copy @<class-path> <new-name>
"

  | clsName newName beditTool |
  clsName := tokens at: 2.
  (clsName beginsWith: '@')
    ifTrue: [ 
      | oldClass |
      oldClass := self resolveAtPathReference: clsName.
      clsName := oldClass name asString ].
  newName := tokens at: 3.
  ^ self clscopy: clsName to: newName