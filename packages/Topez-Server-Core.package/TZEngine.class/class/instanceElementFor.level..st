as yet unclassified
instanceElementFor: instance level: level
    "assuming depth 0 for now"

    | coll indent |
    indent := 0.
    coll := Array new.
    coll add: (self createInstanceElementFor: instance label: '' indent: indent).
    self
        internalInstanceElementsFor: instance
        indent: indent
        limit: limit
        into: coll.
    ^ self toString: coll level: level + 1