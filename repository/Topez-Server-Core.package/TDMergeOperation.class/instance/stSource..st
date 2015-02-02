as yet unclassified
stSource: methodSource
  "assume that first line of source is the method category"

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