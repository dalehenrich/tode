accessing
totalSamples
  totalSamples
    ifNil: [ 
      totalSamples := 0.
      self profMonitorEntries
        do: [ :each | totalSamples := totalSamples + each sampleTally ] ].
  ^ totalSamples