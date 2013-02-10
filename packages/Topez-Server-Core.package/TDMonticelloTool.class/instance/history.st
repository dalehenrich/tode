as yet unclassified
history
  "mc history <regex-pkg-pattern> [<limit>]"

  | pattern limit path |
  pattern := tokens at: 2.
  tokens size >= 3
    ifTrue: [ limit := (tokens at: 3) asNumber ].
  self class halos
    at: 'history'
    put: [ :aTopez | 
      | workingCopyList nodes |
      nodes := Array new.
      workingCopyList := self findMatchingPackages: pattern topez: topez.
      workingCopyList
        do: [ :workingCopy | 
          | ancestors |
          ancestors := workingCopy workingCopy ancestry allAncestors.
          limit ~~ nil
            ifTrue: [ ancestors := ancestors copyFrom: 1 to: limit ].
          nodes
            add:
              (self class
                ancestryNode: ancestors name: workingCopy packageName;
                yourself) ].
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