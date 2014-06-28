as yet unclassified
formatSource: expression
  ^ (RBParser
    parseWorkspace: expression asString
    onError: [ :err :pos | ^ expression ]) formattedCode