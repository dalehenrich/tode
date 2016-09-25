writing
writePatchFrom: src to: trgt type: sourceType label: label
  | source target |
  sourceType = 'method'
    ifTrue: [ 
      src notEmpty
        ifTrue: [ source := self formatMethodSource: src label: label ].
      trgt notEmpty
        ifTrue: [ target := self formatMethodSource: trgt label: label ] ]
    ifFalse: [ 
      source := src withSqueakLineEndings.
      target := trgt withSqueakLineEndings ].
  stream nextPutAll: (TextDiffBuilder from: source to: target) buildTextPatch