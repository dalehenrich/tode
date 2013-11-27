as yet unclassified
addChild: childName
  self fileDirectory createDirectory: childName.
  ^ self _childNodeFor: childName