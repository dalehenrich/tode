as yet unclassified
copyForSpawn
  | block |
  block := self spawnCopyBlock.
  block ifNil: [ ^ super copyForSpawn ].
  ^ block value postCopyForSpawn