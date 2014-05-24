as yet unclassified
stSource: methodSource
  | stSource cr firstLine |
  stSource := String new.
  cr := String cr.
  methodSource
    linesDo: [ :line | 
      firstLine
        ifNil: [ firstLine := line ]
        ifNotNil: [ 
          stSource
            add: line;
            add: cr ] ].
  ^ {firstLine.
  stSource}