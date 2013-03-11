as yet unclassified
mchistory
  "mc history <packageName> [<limit>]"

  | packageName limit path |
  packageName := tokens at: 2.
  tokens size >= 3
    ifTrue: [ limit := (tokens at: 3) asNumber ].
  self class halos
    at: 'history'
    put: [ :aTopez | 
      | workingCopy nodes ancestors |
      workingCopy := MCWorkingCopy allManagers
        detect: [ :wc | wc packageName = packageName ].
      ancestors := workingCopy ancestry allAncestors.
      limit ~~ nil
        ifTrue: [ ancestors := ancestors copyFrom: 1 to: (limit min: ancestors size) ].
      nodes := Dictionary new.
      ancestors do: [ :info | nodes at: info name put: info ].
      (nodes asTDObjectNode: nil topez: aTopez aspect: #'view')
        name: 'history';
        yourself ].
  path := '.mc/history'.
  ^ (topez commands at: 'ds') block
    value: topez
    value: (self topez lookup: path)
    value:
      {'ds'.
      path}
    value: nil