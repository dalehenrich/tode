as yet unclassified
halos
  | list strm |
  strm := TextStream on: Text new.
  list := topez halos keys sorted.
  list
    do: [ :haloName | 
      | text |
      text := haloName = '.readme'
        ifTrue: [ Text string: haloName attributes: TDNode leafTextAttributes ]
        ifFalse: [ 
          Text
            string: haloName , TDNode directoryExtension
            attributes: TDNode directoryTextAttributes ].
      strm nextPutAll: text ]
    separatedBy: [ strm space: 2 ].
  ^ TDCommandResult new
    displayText: strm contents;
    resultObject: list;
    yourself