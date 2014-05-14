accessing
loadProjectUsing: projectTool
  | loads |
  self loads
    ifNotNil: [ :loadList | loads := loadList ]
    ifNil: [ loads := 'default' ].
  ^ projectTool
    projectLoad: self projectName
    selector: self projectSelector
    repositoryDescription: self repositoryDescription
    loads: loads
    version: self configurationVersionString