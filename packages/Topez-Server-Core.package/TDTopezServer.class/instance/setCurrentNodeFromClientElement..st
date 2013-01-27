accessing
setCurrentNodeFromClientElement: aClientElement
  | theObject theNode |
  theObject := aClientElement theObject.
  theNode := theObject asTDNode: self.
  self currentNode: theNode