as yet unclassified
mergeSource
  | diff selectedSource |
  selectedSource := self selectedDefinition source.
  self displayDiffs
    ifFalse: [ ^ selectedSource ].
  diff := TextDiffBuilder
    from:
      (self formatSource: self conflict localDefinition source) withSqueakLineEndings
    to: (self formatSource: selectedSource) withSqueakLineEndings.
  ^ diff buildTextPatch