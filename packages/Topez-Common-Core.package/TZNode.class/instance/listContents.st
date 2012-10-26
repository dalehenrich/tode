as yet unclassified
listContents
    | strm |
    strm := WriteStream on: String new.
    (self contents values sorted: [ :a :b | a printName <= b printName ])
        do: [ :child | strm nextPutAll: child printName ]
        separatedBy: [ strm space: 2 ].
    ^ strm contents