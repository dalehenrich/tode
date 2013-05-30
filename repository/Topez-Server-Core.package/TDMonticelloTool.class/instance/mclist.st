as yet unclassified
mclist
  "mc list <regex-pkg-pattern> "

  | pattern list stream displayPolicy |
  pattern := tokens size > 1
    ifTrue: [ tokens at: 2 ].
  list := self findMatchingPackages: pattern topez: topez.
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  stream := displayPolicy stream.
  list := list sort: [ :a :b | a name <= b name ].
  list
    do: [ :pkg | 
      pkg displayOnPolicy: displayPolicy.
      stream cr ].
  list editUsing: (TDEditorSpec topez: topez).
  ^ list