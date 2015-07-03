menu actions
visitObjectCreationForClassMenuAction: listElement selectionIndex: selectionIndex
  | classes |
  classes := self object classInstancesCreated.
  self halt