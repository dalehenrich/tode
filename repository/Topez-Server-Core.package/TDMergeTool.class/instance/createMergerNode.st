as yet unclassified
createMergerNode
  | nodePath parentNode node |
  nodePath := '/tmp/merge/' , self asOop asString.
  topez ensureChildrenExistIn: nodePath.
  parentNode := topez lookup: nodePath.
  node := self merger
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: #'view'.
  node name: 'merger'.
  parentNode addChildNode: node.
  ^ node