as yet unclassified
theBehavior
  | beh |
  self inClassOop ifNil: [ ^ nil ].
  beh := Smalltalk at: self inClass theNonMetaClass name asSymbol.
  self inClass isMeta
    ifTrue: [ beh := beh class ].
  ^ beh