smalltalk api
pfStart: sampling trace: tracing
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
  tracing
    ifNotNil: [ 
      (#(#'objFaults' #'pageFaults' #'edenUsage' #'gcTime' #'execTime')
        includes: tracing asSymbol)
        ifFalse: [ 
          self
            error:
              'Invalid tracing: ' , tracing printString
                ,
                  '. Should be objFaults, pageFaults, edenUsage, gcTime, or execTime.' ].
      tracing asSymbol ~= #'execTime'
        ifTrue: [ optionsArray add: tracing ] ].
  ^ ProfMonitor new
    setOptions: optionsArray;
    startMonitoring;
    yourself