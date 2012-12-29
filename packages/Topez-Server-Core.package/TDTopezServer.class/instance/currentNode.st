accessing
currentNode
  | node |
  node := self serverStatus currentNode.
  node
    ifNil: [ 
      node := self homeNode.
      self serverStatus currentNode: node ].
  ^ node