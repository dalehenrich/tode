as yet unclassified
format: aString
  ^ (RBParser parseExpression: aString asString onError: [ :err :pos | ^ aString ]) formattedCode