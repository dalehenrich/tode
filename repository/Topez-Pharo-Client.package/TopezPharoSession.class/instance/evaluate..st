api
evaluate: aString
    | result |
    [ result := Compiler evaluate: aString ]
        on: Error , Halt
        do: [ :ex | 
            result := ex asTopezProxy.
            result client at: #'process' put: Processor activeProcess ].
    ^ result