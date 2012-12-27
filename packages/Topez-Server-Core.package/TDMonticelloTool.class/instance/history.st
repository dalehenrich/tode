as yet unclassified
history
  "mc history <pkg-name> [<limit>]"

  | pattern wcNode limit workingCopy path |
  pattern := tokens at: 2.
  tokens size >= 3
    ifTrue: [ limit := (tokens at: 3) asNumber ].
  wcNode := self topez lookup: self pkgsPath.
  workingCopy := wcNode basicContents value detect: [ :pkg | pkg name = pattern ].
  self class halos
    at: 'result'
    put: [ :aTopez | 
      | ancestors |
      ancestors := workingCopy workingCopy ancestry allAncestors.
      limit ~~ nil
        ifTrue: [ ancestors := ancestors copyFrom: 1 to: limit ].
      self class ancestryNode: ancestors ].
  path := '.mc/result'.
  ^ (topez commands at: 'ds') block
    value: topez
    value: (self topez lookup: path)
    value:
      {'ds'.
      path}
    value: nil