as yet unclassified
writePatchFrom: src to: dst
  "src and dst are allowed to be nil to represent a non-existent source or destination state"

  | source target |
  source := src ifNotNil: [ self visitInFork: src ] ifNil: [ '' ].
  target := dst ifNotNil: [ self visitInFork: dst ] ifNil: [ '' ].
  stream nextPutAll: (TextDiffBuilder from: source to: target) buildTextPatch