menu actions
browseHierarchyImplementorsMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def findTool block browseTool theClass classes |
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  theClass := def theClass.
  classes := def allSuperclasses.
  classes add: theClass.
  classes addAll: def allSubclasses.
  findTool := self findTool: listElement.
  block := [ 
  (findTool findMethod: def selector asString)
    select: [ :each | classes includes: each theClass ] ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Implementors of ' , def selector.
  ^ true