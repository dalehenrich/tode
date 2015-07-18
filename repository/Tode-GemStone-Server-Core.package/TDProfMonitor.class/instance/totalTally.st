accessing
totalTally
  totalTally
    ifNil: [ 
      totalTally := 0.
      self profMonitorEntries
        do: [ :each | totalTally := totalTally + each tally ] ].
  ^ totalTally