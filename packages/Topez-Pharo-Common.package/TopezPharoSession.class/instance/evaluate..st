api
evaluate: aString
    | result semaphore |
    semaphore := Semaphore new.
    [ 
    [ result := Compiler evaluate: aString ]
        on: Error , Halt
        do: [ :ex | 
            result := ex asTopezProxy.
            semaphore signal.
            Processor activeProcess suspend ].
    semaphore signal ] fork.
    semaphore wait.
    ^ result