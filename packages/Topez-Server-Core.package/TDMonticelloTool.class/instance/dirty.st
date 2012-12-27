as yet unclassified
dirty
  "mc dirty"

    | path |
  path := self dirtyPath.
  ^ (topez commands at: 'ds') block
    value: topez
    value: (self topez lookup: path)
    value:
      {'ds'.
      path}
    value: nil