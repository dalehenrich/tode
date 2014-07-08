menu actions
browseGitMethodVersionsMenuAction: listElement selectionIndex: selectionIndex
  | itemAttribute methodDef |
  itemAttribute := listElement itemCache at: selectionIndex.
  methodDef := itemAttribute object.
  ^ self browseGitMethodVersions: listElement methodDefinition: methodDef