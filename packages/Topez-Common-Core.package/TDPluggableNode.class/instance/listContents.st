as yet unclassified
listContents
    | strm |
    strm := TextStream on: Text new.
    self contents do: [ :objText | strm nextPutAll: objText ] separatedBy: [ strm space: 2 ].
    ^ strm contents