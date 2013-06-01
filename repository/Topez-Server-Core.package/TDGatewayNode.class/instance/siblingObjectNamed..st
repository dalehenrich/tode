as yet unclassified
siblingObjectNamed: aSiblingName
  ^ self
    siblingObjectNamed: aSiblingName
    ifAbsent: [ self error: aSiblingName , ' not found' ]