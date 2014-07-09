as yet unclassified
removeFromSystem: topez
  self methodCategory.	"https://github.com/dalehenrich/tode/issues/57"
  deletedMethod := self method.
  self theBehavior removeSelector: self selector.
  ^ true