as yet unclassified
formatSource: methodSource
  ^ (RBParser
    parseMethod: methodSource asString
    onError: [ :err :pos | ^ methodSource ]) formattedCode