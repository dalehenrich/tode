smalltalk api
pfStart: sampling tally: tally
  | optionsArray |
  optionsArray := {}.
  sampling
    ifNotNil: [ 
      (#(#'cpu' #'real') includes: sampling asSymbol)
        ifFalse: [ 
          self
            error:
              'Invalid sampling: ' , sampling printString , '. Should be cpu or real.' ].
      optionsArray add: sampling ].
  tally
    ifNotNil: [ 
      (#(#'objCreation' #'objFaults' #'pageFaults' #'edenUsage' #'gcTime' #'execTime')
        includes: tally asSymbol)
        ifFalse: [ 
          self
            error:
              'Invalid tally: ' , tally printString
                ,
                  '. Should be objCreation, objFaults, pageFaults, edenUsage, gcTime, or execTime.' ].
      tally asSymbol ~= #'execTime'
        ifTrue: [ optionsArray add: tally ] ].
  ^ ProfMonitor new
    setOptions: optionsArray;
    startMonitoring;
    yourself