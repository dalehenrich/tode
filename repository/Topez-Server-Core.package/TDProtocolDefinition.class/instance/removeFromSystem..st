cut copy paste
removeFromSystem: topez
  (self theBehavior includesCategory: self categoryName)
    ifTrue: [ self theBehavior removeCategory: self categoryName ].
  ^ true