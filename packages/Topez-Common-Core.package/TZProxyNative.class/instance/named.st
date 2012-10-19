accessing
named
    | dictionary |
    dictionary := Dictionary new.
    self header namedSize = 0
        ifTrue: [ ^ dictionary ].
    self body class allInstVarNames
        do: [ :each | dictionary at: each asSymbol put: (self body instVarNamed: each) asTopezProxy ].
    ^ dictionary