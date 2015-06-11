smalltalk api
pfGather: aProfMonitor
  self pfStop: aProfMonitor.
  aProfMonitor results ifNil: [ aProfMonitor gatherResults ]