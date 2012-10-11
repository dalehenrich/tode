accessing
windowNamesAndIds
    | namesAndIds |
    namesAndIds := OrderedCollection new.
    1 to: windows size do: [ :windowId | 
        | name |
        (windows at: windowId)
            ifNotNil: [ 
                name := windowId printString , '. ' , (self namedWindows keyAtValue: windowId ifAbsent: [ '' ]).
                namesAndIds add: name -> windowId ] ].
    ^ namesAndIds sort: [ :a :b | a key <= b key ]