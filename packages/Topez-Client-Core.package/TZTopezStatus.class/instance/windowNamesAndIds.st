accessing
windowNamesAndIds
    | namesAndIds |
    namesAndIds := OrderedCollection new.
    1 to: windows size do: [ :windowId | 
        | name |
        (windows at: windowId)
            ifNotNil: [ :win | 
                name := windowId printString , '. ' , (self namedWindows keyAtValue: windowId ifAbsent: [ '' ]).
                namesAndIds
                    add:
                        name
                            ->
                                {windowId.
                                (win label)} ] ].
    ^ namesAndIds sort: [ :a :b | (a value at: 2) <= (b value at: 2) ]