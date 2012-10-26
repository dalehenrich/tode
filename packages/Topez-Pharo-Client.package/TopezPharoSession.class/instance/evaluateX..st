api
evaluateX: aString
    | result semaphore |
    semaphore := Semaphore new.
    [ 
    [ result := Compiler evaluate: aString ]
        on: Error , Halt
        do: [ :ex | 
            result := ex asTopezProxy.
            result client at: #'process' put: Processor activeProcess.
            semaphore signal.
            Processor activeProcess suspend ].
    semaphore signal ] fork.
    semaphore wait.
    ^ result