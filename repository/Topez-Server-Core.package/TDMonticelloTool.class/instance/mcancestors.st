as yet unclassified
mcancestors
  "mc ancestors <packageName> [<limit>]
      ancestors @<workingCopy-path> [<limit>]
  "

  | packageName limit path |
  packageName := tokens at: 2.
  tokens size >= 3
    ifTrue: [ limit := (tokens at: 3) asNumber ].
  self class halos
    at: 'ancestors'
    put: [ :aTopez | 
      | workingCopy ancestors |
      workingCopy := self resolveWorkingCopyReference: packageName.
      ancestors := workingCopy ancestry allAncestors.
      limit ~~ nil
        ifTrue: [ ancestors := ancestors copyFrom: 1 to: (limit min: ancestors size) ].
      (ancestors asTDObjectNode: nil topez: aTopez aspect: #'view')
        name: 'ancestors';
        yourself ].
  path := '.mc/ancestors'.
  ^ (topez commands at: 'ds') block
    value: topez
    value: (self topez lookup: path)
    value:
      {'ds'.
      path}
    value: nil