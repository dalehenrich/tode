menu actions
moveMethodToPackageMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute def |
  itemAttribute := listElement itemCache at: selectionIndex.
  def := itemAttribute object.
  ^ self moveDefinitionToPackage: listElement definition: def