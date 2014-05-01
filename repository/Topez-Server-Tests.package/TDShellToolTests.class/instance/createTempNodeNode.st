as yet unclassified
createTempNodeNode
  | tmpNode tempNodeName |
  tmpNode := self topez sessionTempsNode.
  tempNodeName := 'ShellTestTemps'.
  ^ tmpNode addChildIfAbsent: tempNodeName