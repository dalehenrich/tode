as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  | beh selector ans theFormattedSource |
  theFormattedSource := self formattedElementSource: methodSource.
  beh := self theBehavior.
  selector := self selector.
  ans := beh compile: theFormattedSource classified: self methodProtocol.
  clientSourceElement topez commitTransaction.
  selector asSymbol ~~ ans
    ifTrue: [ self differentMethodCreated: ans ].
  ^ ans