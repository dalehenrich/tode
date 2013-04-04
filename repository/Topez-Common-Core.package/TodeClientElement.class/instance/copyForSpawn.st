as yet unclassified
copyForSpawn
  | copy |
  copy := self copy.
  self topez serverStatus elementCache add: copy.
  ^ copy postCopyForSpawn