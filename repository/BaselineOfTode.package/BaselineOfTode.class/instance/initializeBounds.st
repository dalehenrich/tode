baseline
initializeBounds
  "On the off chance that TDTopezClient class>>createBoundsDictionary has been 
   redefined, cause TDTopezGemStoneClient to have it's bounds initialized"

  Smalltalk
    at: #'TDTopezGemStoneClient'
    ifPresent: [ :cls | cls initializeBounds ]