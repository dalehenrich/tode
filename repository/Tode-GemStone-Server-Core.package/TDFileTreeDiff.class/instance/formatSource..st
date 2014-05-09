as yet unclassified
formatSource: methodSource
  | ar firstLine stSource |
  self hasFileTreeSmalltalkSource
    ifFalse: [ ^ super formatSource: methodSource ].
  ar := self stSource: methodSource.
  firstLine := ar at: 1.
  stSource := ar at: 2.
  firstLine
    add: String cr;
    add: (super formatSource: stSource).
  ^ firstLine