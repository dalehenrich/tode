commands
ds
  "
  ds [--help ] [--level=<display-depth>] [<path>] 
"

  | node level |
  level := 1.
  node := self arguments isEmpty
    ifTrue: [ topez currentNode ]
    ifFalse: [ topez lookup: (arguments at: 1) ].
  level := 0.
  options at: 'level' ifPresent: [ :str | level := str asNumber ].
  ^ self ds: node level: level