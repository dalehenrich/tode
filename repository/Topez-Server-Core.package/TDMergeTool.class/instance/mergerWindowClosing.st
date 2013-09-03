accessing
mergerWindowClosing
  | nodePath node |
  nodePath := '/tmp/merge/' , self asOop asString.
  topez ensureChildrenExistIn: nodePath.
  node := topez lookup: nodePath.
  node rm