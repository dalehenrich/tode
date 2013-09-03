as yet unclassified
mergeSource
  | diff selectedSource baseDefinition baseSource |
  selectedSource := self selectedDefinitionSource.
  self displayDiffs
    ifFalse: [ ^ selectedSource ].
  baseDefinition := self operation baseDefinition.
  baseSource := baseDefinition isNil
    ifTrue: [ '' ]
    ifFalse: [ baseDefinition source ].
  diff := TextDiffBuilder
    from: (self formatSource: baseSource) withSqueakLineEndings
    to: (self formatSource: selectedSource) withSqueakLineEndings.
  ^ diff buildTextPatch