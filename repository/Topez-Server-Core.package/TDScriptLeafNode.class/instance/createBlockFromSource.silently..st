as yet unclassified
createBlockFromSource: blockSource silently: silently
  "not sure if silently == false makes any sense"

  silently
    ifTrue: [ ^ self topez evaluateString: blockSource ]
    ifFalse: [ ^ self topez evaluateString: blockSource ]