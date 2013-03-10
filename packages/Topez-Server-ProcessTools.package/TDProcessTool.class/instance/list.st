as yet unclassified
list
  "ps list [<level>]"

  | level |
  level := 1.
  tokens size >= 2
    ifTrue: [ level := (tokens at: 2) asNumber ].
  ^ (topez commands at: 'ds') block
    value: topez
    value: (self topez lookup: '.processes')
    value:
      {'ds'.
      '.processes'.
      level}
    value: nil