cut copy paste
pasteIntoBehaviorDefinition: aBehaviorDefinition
  (aBehaviorDefinition theBehavior includesCategory: self categoryName)
    ifFalse: [ aBehaviorDefinition theBehavior addCategory: self categoryName ].
  ^ true