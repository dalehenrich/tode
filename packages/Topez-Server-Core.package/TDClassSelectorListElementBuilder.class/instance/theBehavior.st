as yet unclassified
theBehavior
  | beh cl |
  beh := self object.
  cl := Smalltalk classNamed: beh theNonMetaClass name.
  beh isMeta
    ifTrue: [ cl := cl class ].
  ^ cl