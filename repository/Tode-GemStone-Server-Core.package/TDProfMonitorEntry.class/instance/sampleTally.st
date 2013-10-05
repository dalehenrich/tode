as yet unclassified
sampleTally
  | aMeth |
  aMeth := self profMonEntry cmethod.
  ^ (aMeth class == GsNMethod or: [ aMeth == #'GCI' ])
    ifTrue: [ profMonEntry tally ]
    ifFalse: [ 0 ]