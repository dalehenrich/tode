accessing
visitAsLeafNode
  "By default treat the receiver as a leaf node to avoid traversing large swatches of the 
  the file system ... but for cases where you are mounting file system structure with
  nodes, then we _want_ to traverse at least the mount point"

  visitAsLeafNode ifNil: [ visitAsLeafNode := true ].
  ^ visitAsLeafNode