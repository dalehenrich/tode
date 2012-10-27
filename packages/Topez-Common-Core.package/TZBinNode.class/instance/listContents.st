as yet unclassified
listContents
    | strm |
    strm := TextStream on: Text new.
    self contents keys sorted
        do: [ :name | strm nextPutAll: (Text string: name , '*' attributes: {(TextEmphasis underlined)}) ]
        separatedBy: [ strm space: 2 ].
    ^ strm contents