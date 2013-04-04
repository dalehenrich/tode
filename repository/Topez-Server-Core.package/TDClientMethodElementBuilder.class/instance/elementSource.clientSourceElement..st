as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  | beh selector category ans theFormattedSource |
  theFormattedSource := self formattedElementSource: methodSource.
  beh := self theBehavior.
  selector := self selector.
  category := beh categoryOfSelector: selector asSymbol.
  category ifNil: [ category := ClassOrganizer default ].
  ans := beh compile: theFormattedSource classified: category.
  clientSourceElement topez commitTransaction.
  selector asSymbol ~~ ans
    ifTrue: [ self differentMethodCreated: ans ].
  ^ ans