as yet unclassified
listContents: limit
    | strm count |
    strm := TextStream on: Text new.
    count := 0.
    (self contents values sorted: [ :a :b | a name <= b name ])
        do: [ :child | 
            count := count + 1.
            (limit > 0 and: [ count > limit ])
                ifTrue: [ 
                    strm nextPutAll: '  ...'.
                    ^ strm contents ].
            strm nextPutAll: child renderNameText ]
        separatedBy: [ strm space: 2 ].
    ^ strm contents