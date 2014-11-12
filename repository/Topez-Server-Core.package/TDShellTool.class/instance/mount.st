mount
mount
  "
  mount [-h|--help]
  mount [--asLeafNode] <directory-or-file-path> <object-path> [<link-name>]
  mount [--asLeafNode] --todeRoot <directory-or-file-path> <object-path> [<link-name>]
  "

  | directoryOrFilePath asLeafNode |
  directoryOrFilePath := self arguments at: 1.
  options
    at: 'todeRoot'
    ifPresent: [ :ignored | directoryOrFilePath := self topez serverTodeRoot , '/' , directoryOrFilePath ].
  options
    at: 'asLeafNode'
    ifAbsent: [ asLeafNode := false ]
    ifPresent: [ :ignored | asLeafNode := true ].
  ^ self
    mount: directoryOrFilePath
    at: (self arguments at: 2)
    as:
      (self arguments at: 3 ifAbsent: [ (directoryOrFilePath findTokens: '/') last ])
    visitAsLeafNode: asLeafNode