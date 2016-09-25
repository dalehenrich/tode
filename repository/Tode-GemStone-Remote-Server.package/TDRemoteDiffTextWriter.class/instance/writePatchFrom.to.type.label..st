writing
writePatchFrom: src to: trgt type: sourceType label: label
  | source target |
  source := src.
  target := trgt.
  sourceType = 'method'
    ifTrue: [ 
      src notEmpty
        ifTrue: [ source := self formatMethodSource: src label: label ].
      trgt notEmpty
        ifTrue: [ target := self formatMethodSource: trgt label: label ] ].
  stream nextPutAll: (TextDiffBuilder from: source to: target) buildTextPatch