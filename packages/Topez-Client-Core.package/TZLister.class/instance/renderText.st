rendering
renderText
    | textStream |
    textStream := TextStream on: Text new.
    1 to: listProxy size do: [ :index | 
        | element |
        element := (listProxy at: index) asTopezProxy.
        textStream nextPutAll: element proxyPrintString.
        index < listProxy size
            ifTrue: [ textStream cr ] ].
    ^ textStream contents