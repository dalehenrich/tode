visitor-leaves
acceptObjectNode: aTDObjectNode
  "for the purpose of visiting leaves, an object node is considered as a leaf ... 
   we do not plan to traverse the object structure"

  self acceptLeafNode: aTDObjectNode