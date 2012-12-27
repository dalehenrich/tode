as yet unclassified
list
  "  mc list <pkg-spec> "

  | pattern list stream |
  pattern := tokens at: 2.
  list := self findMatchingPackages: pattern topez: topez.
  stream := TextStream on: Text new.
  list
    do: [ :pkg | 
      pkg tzNodeDisplayOn: stream limit: 160 compacted: true.
      stream cr ].
  ^ stream contents