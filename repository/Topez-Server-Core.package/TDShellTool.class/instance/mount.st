mount
mount
  "
  mount [-h|--help]
  mount [--asLeafNode] <directory-or-file-path> <object-path> [<link-name>]
  mount [--asLeafNode] @<directory-instance-path> <object-path> [<link-name>]
  mount [--asLeafNode] [--todeRoot | --stoneRoot] <relative-directory-or-file-path> <object-path> [<link-name>]
  "

  | directoryOrFilePath asLeafNode |
  directoryOrFilePath := self arguments at: 1.
  directoryOrFilePath = '/'
    ifTrue: [ directoryOrFilePath := '' ].
  (directoryOrFilePath beginsWith: '@')
    ifTrue: [ 
      | dir |
      dir := self resolveAtPathReference: directoryOrFilePath.
      directoryOrFilePath := dir pathName ].
  options
    at: 'todeRoot'
    ifPresent: [ :ignored | directoryOrFilePath := self topez serverTodeRoot , '/' , directoryOrFilePath ]
    ifAbsent: [ 
      options
        at: 'stoneRoot'
        ifPresent: [ :ignored | 
          directoryOrFilePath := self topez serverTodeStoneRoot , '/'
            , directoryOrFilePath ] ].
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