as yet unclassified
_addBasicChildNode: aNode
  "use in very restricted circumstances --- topez not set properly in aNode"

  aNode parent: self.
  self basicContents at: aNode name put: aNode