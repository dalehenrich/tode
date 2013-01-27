as yet unclassified
theBehavior
  | beh |
  beh := self theClass.
  self inClass isMeta
    ifTrue: [ beh := beh class ].
  ^ beh