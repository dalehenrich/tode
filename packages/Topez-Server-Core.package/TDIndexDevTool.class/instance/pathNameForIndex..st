as yet unclassified
pathNameForIndex: theIndex
    | stream |
    stream := WriteStream on: String new.
    1 to: theIndex size do: [ :index | 
        stream nextPutAll: (theIndex at: index) name.
        index == theIndex size
            ifFalse: [ stream nextPut: '.' ] ].
    ^ stream contents