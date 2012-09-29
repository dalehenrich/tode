tests
testStep
    | result doit processProxy |
    doit := '| ans | ans := 3. ^ans halt + 4 + 3'.
    result := [ self topez run: doit ]
        on: TZTopezErrorNotification
        do: [ :ex | 
            processProxy := ex errorProxy context.
            ex resume ]