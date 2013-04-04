accessing
format: aString
    ^ (RBParser parseMethod: aString asString onError: [ :err :pos | ^ aString ]) formattedCode