writing
writePatchFrom: src to: trgt type: sourceType label: label
  | source target |
  sourceType = 'method'
    ifTrue: [ 
      source := src isEmpty
        ifTrue: [ src withSqueakLineEndings ]
        ifFalse: [ self formatMethodSource: src label: label ].
      target := trgt isEmpty
        ifTrue: [ trgt withSqueakLineEndings ]
        ifFalse: [ self formatMethodSource: trgt label: label ] ]
    ifFalse: [ 
      source := src withSqueakLineEndings.
      target := trgt withSqueakLineEndings ].
  stream nextPutAll: (TextDiffBuilder from: source to: target) buildTextPatch