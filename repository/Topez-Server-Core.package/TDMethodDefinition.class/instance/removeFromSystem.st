as yet unclassified
removeFromSystem
  self methodCategory.	"https://github.com/dalehenrich/tode/issues/57"
  deletedMethod := self method.
  self theBehavior removeSelector: self selector.
  ^ true