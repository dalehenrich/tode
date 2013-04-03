rendering
renderText
    | textStream |
    (self listProxy isString or: [ self listProxy isText ])
        ifTrue: [ ^ self listProxy ].
    textStream := TextStream on: Text new.
    1 to: listProxy size do: [ :index | 
        | element |
        element := (listProxy at: index) asTopezNative.
        (element isString or: [ element isText ])
            ifFalse: [ element := (listProxy at: index) asTopezProxy ].
        textStream nextPutAll: element renderText.
        index < listProxy size
            ifTrue: [ textStream cr ] ].
    ^ textStream contents