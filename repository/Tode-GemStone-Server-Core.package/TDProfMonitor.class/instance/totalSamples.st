as yet unclassified
totalSamples
  totalSamples
    ifNil: [ 
      totalSamples := 0.
      self profMonResults
        do: [ :each | totalSamples := totalSamples + each sampleTally ] ].
  ^ totalSamples