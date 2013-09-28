as yet unclassified
tally
  ^ profMonEntry cmethod class == GsNMethod
    ifTrue: [ profMonEntry tally ]
    ifFalse: [ 0 ]