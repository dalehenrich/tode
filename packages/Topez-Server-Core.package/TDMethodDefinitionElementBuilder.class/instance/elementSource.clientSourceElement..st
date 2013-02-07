as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  | beh selector category ans |
  beh := self theBehavior.
  selector := self selector.
  category := beh categoryOfSelector: selector asSymbol.
  ans := beh compile: methodSource classified: category.
  clientSourceElement topez commitTransaction.
  ^ ans