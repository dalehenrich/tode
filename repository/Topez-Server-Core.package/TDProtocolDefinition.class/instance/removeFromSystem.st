as yet unclassified
removeFromSystem
  (self theBehavior includesCategory: self categoryName)
    ifTrue: [ self theBehavior removeCategory: self categoryName ].
  ^ true