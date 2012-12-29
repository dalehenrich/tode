as yet unclassified
source
  | src |
  src := super source.
  ^ self formatOnDisplay
    ifTrue: [ self format: src ]
    ifFalse: [ src ]