as yet unclassified
elementSource: source clientSourceElement: clientSourceElement
  | bool |
  bool := self object elementSource: source.
  clientSourceElement topez commitTransaction.
  ^ bool