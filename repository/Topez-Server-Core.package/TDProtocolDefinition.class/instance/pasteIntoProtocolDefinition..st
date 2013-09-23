as yet unclassified
pasteIntoProtocolDefinition: aProtocolDefinition
  (aProtocolDefinition theBehavior includesCategory: self categoryName)
    ifFalse: [ aProtocolDefinition theBehavior addCategory: self categoryName ].
  ^ true