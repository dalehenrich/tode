smalltalk api
pfReport: aProfMon tallyLimit: limit
  self pfStop: aProfMon.
  self pfGather: aProfMon.
  ^ aProfMon reportDownTo: limit