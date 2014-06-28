as yet unclassified
format: aString
  ^ (RBParser
    parseWorkspace: aString asString
    onError: [ :err :pos | ^ aString ]) formattedCode