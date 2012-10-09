accessing
windowNamesAndIds
    | namesAndIds |
    namesAndIds := OrderedCollection new.
    1 to: windows size do: [ :windowId | 
        | name |
        (windows at: windowId)
            ifNotNil: [ 
                name := self namedWindows keyAtValue: windowId ifAbsent: [ windowId printString ].
                namesAndIds add: name -> windowId ] ].
    ^ namesAndIds sort: [ :a :b | a key <= b key ]