as yet unclassified
createLiteral: literalType from: aString
  literalType == #'String'
    ifTrue: [ ^ aString ].
  literalType == #'Symbol'
    ifTrue: [ ^ aString asSymbol ].
  literalType == #'Number'
    ifTrue: [ ^ aString asNumber ].
  (literalType == #'Array' or: [ literalType == #'ByteArray' ])
    ifTrue: [ ^ aString evaluate ].
  ^ TodeCommandError
    signal: 'Unknown literal type: ' , literalType asString printString