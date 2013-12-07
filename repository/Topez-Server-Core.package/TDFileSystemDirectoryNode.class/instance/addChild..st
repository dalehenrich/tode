as yet unclassified
addChild: childName
  (self fileDirectory directoryNamed: childName) assureExistence.
  ^ self _childNodeFor: childName