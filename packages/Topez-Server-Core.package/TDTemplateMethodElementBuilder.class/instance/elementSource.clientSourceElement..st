as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  | beh ans |
  beh := self inClass.
  ans := beh compile: methodSource.
  clientSourceElement topez commitTransaction.
  ^ ans