as yet unclassified
addChildIfAbsent: childName
  ^ self childNamed: childName ifAbsent: [ self addChild: childName ]