as yet unclassified
method
  | cl method |
  cl := Smalltalk classNamed: self theClassName.
  self isMeta
    ifTrue: [ cl := cl class ].
  ^ cl
    compiledMethodAt: self selector
    ifAbsent: [ 
      "if it's not in the class, it might have been deleted"
      deletedMethod ]