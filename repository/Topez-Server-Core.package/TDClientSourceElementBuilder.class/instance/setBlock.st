accessing
setBlock
  ^ [ :source :clientSourceElement | 
  | result |
  result := self elementSource: source clientSourceElement: clientSourceElement.
  clientSourceElement topez commitTransaction.
  result ]