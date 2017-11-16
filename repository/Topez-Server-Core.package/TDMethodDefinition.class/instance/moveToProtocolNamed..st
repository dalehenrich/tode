as yet unclassified
moveToProtocolNamed: aProtocolName
  self appEnv classify: self selector under: aProtocolName for: self theBehavior.
  ^ true