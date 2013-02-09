as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  | beh selector category ans |
  beh := self theBehavior.
  selector := self selector.
  category := beh categoryOfSelector: selector asSymbol.
  category ifNil: [ category := ClassOrganizer default ].
  ans := beh compile: methodSource classified: category.
  clientSourceElement topez commitTransaction.
  selector asSymbol ~~ ans
    ifTrue: [ self differentMethodCreated: ans ].
  ^ ans