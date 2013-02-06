as yet unclassified
removeFromSystem
  deletedMethod := self method.
  self theBehavior removeSelector: self selector.
  ^ true