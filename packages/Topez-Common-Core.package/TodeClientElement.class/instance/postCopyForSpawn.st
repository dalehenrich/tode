as yet unclassified
postCopyForSpawn
  "generate new windowName so navigation will occur in spawned window"

  editorWindowName ifNil: [ ^ self ].
  editorWindowName := self clientElementOop asString asSymbol