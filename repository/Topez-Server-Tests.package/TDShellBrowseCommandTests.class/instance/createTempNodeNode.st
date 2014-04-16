as yet unclassified
createTempNodeNode
  | tmpNode |
  tmpNode := self topez sessionTempsNode.
  ^ tmpNode addChild: 'ShellTestTemps'