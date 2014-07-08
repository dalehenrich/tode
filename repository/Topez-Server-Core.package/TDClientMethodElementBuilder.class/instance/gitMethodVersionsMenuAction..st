menu actions
gitMethodVersionsMenuAction: sourceElement
  | def |
  def := self methodDefinition.
  ^ self browseGitMethodVersions: sourceElement methodDefinition: def