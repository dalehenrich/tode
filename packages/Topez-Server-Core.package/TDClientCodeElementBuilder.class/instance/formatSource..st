as yet unclassified
formatSource: expression
  ^ (RBParser
    parseExpression: expression asString
    onError: [ :err :pos | ^ expression ]) formattedCode