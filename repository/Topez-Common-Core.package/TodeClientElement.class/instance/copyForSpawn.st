as yet unclassified
copyForSpawn
  | copy |
  copy := self copy.
  self topez serverStatus cacheClientElement: copy.
  ^ copy postCopyForSpawn