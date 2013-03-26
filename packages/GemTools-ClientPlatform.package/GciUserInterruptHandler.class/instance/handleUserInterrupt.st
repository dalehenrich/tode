private
handleUserInterrupt
  "This will be called from the event-fetcher process. 
	Assume no system-vital processes have a lower priority than this, and are thus ok to interrupt"

  UserInterruptHandler cmdDotEnabled
    ifTrue: [ 
      [ 
      | toInterrupt |
      toInterrupt := self processToInterrupt.
      toInterrupt
        ifNotNil: [ 
          toInterrupt
            signalException:
              (GciUserInterrupt new
                processToInterrupt: toInterrupt;
                yourself) ] ]
        on: Error
        fork: [ :ex | 
          "fork exceptions, we don't want interrupt handler to die"
          ex pass ] ]