as yet unclassified
halos
    | strm |
    strm := TextStream on: Text new.
    topez halos keys sorted
        do: [ :haloName | 
            | text |
            text := haloName = '.readme'
                ifTrue: [ Text string: haloName attributes: TDNode leafTextAttributes ]
                ifFalse: [ Text string: haloName , TDNode directoryExtension attributes: TDNode directoryTextAttributes ].
            strm nextPutAll: text ]
        separatedBy: [ strm space: 2 ].
    ^ strm contents