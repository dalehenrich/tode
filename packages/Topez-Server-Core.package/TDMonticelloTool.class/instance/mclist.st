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
  list
    do: [ :pkg | 
      pkg displayOn: displayPolicy.
      stream cr ].
  ^ stream contents