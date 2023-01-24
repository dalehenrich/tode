*tode-gemstone-core3x
gshaltOnOutOfMemory: percent
  AlmostOutOfMemory enableAtThreshold: percent.
  AlmostOutOfMemory
    addDefaultHandler: [ :ex | 
      self halt.
      AlmostOutOfMemory enableAtThreshold: percent.
      ex resume ]