as yet unclassified
formatSource: methodSource
  | ar firstLine stSource |
  self hasFileTreeSmalltalkSource
    ifFalse: [ 
      "from a non-st file ... formatting not possible"
      ^ methodSource ].
  methodSource isEmpty
    ifTrue: [ ^ methodSource ].
  ar := self stSource: methodSource.
  firstLine := ar at: 1.
  stSource := (ar at: 2) trimBoth.
  firstLine
    add: String cr;
    add: (super formatSource: stSource).
  ^ firstLine