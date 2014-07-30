as yet unclassified
copyForSpawn
  | block element builder |
  block := self spawnCopyBlock.
  block ifNil: [ ^ super copyForSpawn ].
  element := block value.
  builder := element windowBuilder.
  (builder formatOnDisplay or: [ builder formatOnAccept ])
    ifTrue: [ ^ element copyForSpawn ].
  ^ element