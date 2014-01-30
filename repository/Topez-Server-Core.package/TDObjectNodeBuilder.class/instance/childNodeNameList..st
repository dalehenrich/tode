as yet unclassified
childNodeNameList: parentNode
  | parentObj indexedSize coll specialElements ivs dvs |
  parentObj := parentNode basicContents.
  ivs := parentObj class allInstVarNames.
  dvs := (parentObj respondsTo: #'dynamicInstanceVariables')
    ifTrue: [ parentObj dynamicInstanceVariables ]
    ifFalse: [ #() ].
  coll := (ivs , dvs) sorted collect: [ :each | each asString ].
  indexedSize := (Reflection sizeOf: parentObj) - coll size.
  specialElements := self specialChildNodeNameList: parentNode.
  ^ specialElements , coll
    , ((1 to: indexedSize) collect: [ :each | each asString ])