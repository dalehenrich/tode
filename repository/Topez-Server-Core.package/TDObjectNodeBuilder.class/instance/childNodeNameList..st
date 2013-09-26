as yet unclassified
childNodeNameList: parentNode
  | indexedSize coll specialElements |
  coll := parentNode basicContents class allInstVarNames sorted
    collect: [ :each | each asString ].
  indexedSize := (Reflection sizeOf: parentNode basicContents) - coll size.
  specialElements := self specialChildNodeNameList: parentNode.
  ^ specialElements , coll
    , ((1 to: indexedSize) collect: [ :each | each asString ])