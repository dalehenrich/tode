as yet unclassified
addChildNode: aNode
    aNode parent: self.
    ^ self basicContents at: aNode name put: aNode