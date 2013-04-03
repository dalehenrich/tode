as yet unclassified
listContents: limit
    | strm count |
    strm := TextStream on: Text new.
    count := 0.
    self contents
        do: [ :objText | 
            count := count + 1.
            (limit > 0 and: [ count > limit ])
                ifTrue: [ 
                    strm nextPutAll: '  ...'.
                    ^ strm contents ].
            strm nextPutAll: objText ]
        separatedBy: [ strm space: 2 ].
    ^ strm contents