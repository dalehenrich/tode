as yet unclassified
mrlist
  "mr list [<regex-repo-pattern>]"

  | pattern list stream displayPolicy |
  pattern := tokens size > 1
    ifTrue: [ tokens at: 2 ].
  list := self findMatchingRepositories: pattern topez: topez.
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  stream := displayPolicy stream.
  list
    do: [ :pkg | 
      pkg displayOn: displayPolicy.
      stream cr ].
  ^ TDCommandResult new
    displayText: stream contents;
    resultObject: list;
    yourself