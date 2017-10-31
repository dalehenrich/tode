definitions
removeMethodDefinitionFromSystem: aMethodDefinition topez: topez
  | methTool |
  methTool := topez toolInstanceFor: 'cls'.
  aMethodDefinition methodCategory.	"https://github.com/dalehenrich/tode/issues/57"
  aMethodDefinition deletedMethod: aMethodDefinition method.
  methTool methodremove: aMethodDefinition.	"perhaps some refactoring is called for?"
  ^ true