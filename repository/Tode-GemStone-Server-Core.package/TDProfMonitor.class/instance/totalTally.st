as yet unclassified
totalTally
  totalTally
    ifNil: [ 
      totalTally := 0.
      self profMonResults do: [ :each | totalTally := totalTally + each tally ] ].
  ^ totalTally