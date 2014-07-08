as yet unclassified
moveToProtocolNamed: aProtocolName
  self theBehavior classify: self selector under: aProtocolName.
  ^ true