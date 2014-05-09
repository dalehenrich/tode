as yet unclassified
methodSelector
  | methodSource methodNode |
  self hasFileTreeSmalltalkSource
    ifFalse: [ ^ nil ].
  methodSource := self stSource at: 2.
  methodNode := RBParser
    parseMethod: methodSource asString
    onError: [ :err :pos | ^ nil ].
  ^ methodNode selector