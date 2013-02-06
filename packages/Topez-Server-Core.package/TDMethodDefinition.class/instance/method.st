as yet unclassified
method
  | cl method |
  cl := Smalltalk classNamed: self className.
  self isMeta
    ifTrue: [ cl := cl class ].
  ^ cl compiledMethodAt: self selector