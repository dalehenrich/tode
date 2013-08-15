as yet unclassified
formatSource
  ^ (RBParser
    parseMethod: self source asString
    onError: [ :err :pos | ^ self source ]) formattedCode