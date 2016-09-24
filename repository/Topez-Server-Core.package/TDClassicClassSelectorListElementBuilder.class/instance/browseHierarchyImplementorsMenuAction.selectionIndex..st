menu actions
browseHierarchyImplementorsMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def block selector findTool browseTool theClass classes |
  selectionIndex == 0
    ifTrue: [ ^ false ].
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  theClass := def theClass.
  classes := def allSuperclasses.
  classes add: theClass.
  classes addAll: def allSubclasses.
  selector := def selector asString.
  findTool := self findTool: listElement.
  block := [ 
  (findTool findMethod: selector username: def username)
    select: [ :each | classes includes: each theClass ] ].
  browseTool := self browseTool: listElement.
  browseTool browseMethodsBlock: block label: 'Implementors of ' , selector.
  ^ true