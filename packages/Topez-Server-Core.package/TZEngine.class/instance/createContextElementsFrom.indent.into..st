as yet unclassified
createContextElementsFrom: frameContents indent: indent into: coll
    | argAndTempNames value |
    argAndTempNames := frameContents at: 9.
    value := frameContents at: 8.	"self"
    value ifNil: [ value := frameContents at: 10	"receiver" ].
    coll add: (self createInstanceElementFor: value label: 'self' indent: indent).
    1 to: argAndTempNames size do: [ :index | 
        value := frameContents at: 10 + index.
        coll add: (self createInstanceElementFor: value label: (argAndTempNames at: index) indent: indent) ]