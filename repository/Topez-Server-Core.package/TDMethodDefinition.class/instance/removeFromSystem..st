as yet unclassified
removeFromSystem: topez
  | methTool |
  methTool := topez toolInstanceFor: 'cls'.
  self methodCategory.	"https://github.com/dalehenrich/tode/issues/57"
  deletedMethod := self method.
  methTool methodremove: self.	"perhaps some refactoring is called for?"
  ^ true