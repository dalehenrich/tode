api
instanceElementFor: instanceProxy level: level
    "assuming depth 0 for now"

    | coll indent |
    indent := 0.
    coll := OrderedCollection new.
    coll add: (self createInstanceElementFor: instanceProxy label: '' indent: indent).
    self
        internalInstanceElementsFor: instanceProxy
        indent: indent
        limit: level
        into: coll.
    ^ coll asArray