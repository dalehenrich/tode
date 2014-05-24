visitor-leaves
acceptSessionTempNode: aTDSessionTempNode
  "for the purpose of visiting leaves, a session temp node is considered as a leaf ... 
   we do not plan to traverse the object structure"

  self acceptLeafNode: aTDSessionTempNode