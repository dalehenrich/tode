public gci calls
clearStack: aGsProcess
  number == nil
    ifTrue: [ ^ self ].
  self library
    critical: [ :lib | 
      lib apiGciSetSessionId: self getSessionNumber.
      lib apiGciClearStack: (self asOopType: aGsProcess) ]