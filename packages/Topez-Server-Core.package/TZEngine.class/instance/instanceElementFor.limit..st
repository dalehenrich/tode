as yet unclassified
instanceElementFor: instance limit: limit
    | coll indent |
    indent := 0.
    coll := Array new.
    coll add: (self createInstanceElementFor: instance label: '' indent: indent).
    self
        internalInstanceElementsFor: instance
        indent: indent + 1
        limit: limit
        into: coll.
    ^ coll