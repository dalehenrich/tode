mount
mount
  "
  mount [-h|--help]
  mount [--asLeafNode] <directory-path> <object-path> [<link-name>]
  mount [--asLeafNode] --todeRoot <directory-path> <object-path> [<link-name>]
  "

  | directoryPath asLeafNode |
  directoryPath := self arguments at: 1.
  options
    at: 'todeRoot'
    ifPresent: [ :ignored | directoryPath := self topaz serverTodeRoot , '/' , directoryPath ].
  options
    at: 'asLeafNode'
    ifAbsent: [ asLeafNode := false ]
    ifPresent: [ :ignored | asLeafNode := true ].
  ^ self
    mount: directoryPath
    at: (self arguments at: 2)
    as:
      (self arguments at: 3 ifAbsent: [ (directoryPath findTokens: '/') last ])
    visitAsLeafNode: asLeafNode