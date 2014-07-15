as yet unclassified
childNodeNameList: parentNode
  | specialElements |
  specialElements := self specialChildNodeNameList: parentNode.
  ^ specialElements , (1 to: self collectionElements size)
    collect: [ :each | each asString ]