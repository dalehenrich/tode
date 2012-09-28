private
doInSession: aBlock
    [ 
    | result |
    result := aBlock value.
    ^ STON fromString: result ]
        on: GsRuntimeError
        do: [ :ex | ^ ex tag asTopezProxy ]