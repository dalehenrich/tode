as yet unclassified
childNodeNameList: parentNode
  | indexedSize coll |
  coll := parentNode basicContents class allInstVarNames sorted collect: [ :each | each asString ].
  indexedSize := (Reflection sizeOf: parentNode basicContents) - coll size.
  ^ coll , ((1 to: indexedSize) collect: [ :each | each asString ])