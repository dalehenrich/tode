private
doInSession: aBlock
    [ 
    | result |
    result := aBlock value: self session.
    ^ STON fromString: result ]
        on: GsRuntimeError
        do: [ :ex | ^ ex tag asTopezProxy ]