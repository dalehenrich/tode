as yet unclassified
btreeNode: btree
    | node |
    self nodes at: btree ifPresent: [ :theNode | ^ theNode ].
    node := btree asTDObjectNode: self topez aspect: #'index'.
    self nodes at: btree put: node.
    ^ node