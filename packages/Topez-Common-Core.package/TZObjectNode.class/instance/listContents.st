as yet unclassified
listContents
    | strm |
    strm := TextStream on: Text new.
    self contents 
        do: [ :objName | strm nextPutAll: (Text string: objName asTopezNative , self extension attributes: {(TextEmphasis normal)}) ]
        separatedBy: [ strm space: 2 ].
    ^ strm contents