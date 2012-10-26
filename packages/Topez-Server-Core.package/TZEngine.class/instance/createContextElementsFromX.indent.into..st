as yet unclassified
createContextElementsFromX: frameContents indent: indent into: coll
    | argAndTempNames value |
    argAndTempNames := frameContents at: 9.
    value := frameContents at: 8.	"self"
    value ifNil: [ value := frameContents at: 10	"receiver" ].
    coll add: self -> value.
    1 to: argAndTempNames size do: [ :index | 
        value := frameContents at: 10 + index.
        coll add: (argAndTempNames at: index) -> value ]