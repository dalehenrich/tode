as yet unclassified
method
  | cl method |
  cl := Smalltalk classNamed: self className.
  self isMeta
    ifTrue: [ cl := cl class ].
  ^ cl
    compiledMethodAt: self selector
    ifAbsent: [ 
      "if it's not in the class, it might have been deleted"
      deletedMethod ]