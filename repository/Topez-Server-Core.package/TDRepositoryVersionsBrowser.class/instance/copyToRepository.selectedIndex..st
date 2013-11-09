actions
copyToRepository: listElement selectedIndex: index
  | resolvedVersion selectedRepository repositoryDescriptions version values repositories selectionIndexes selectionIndex |
  index = 0
    ifTrue: [ ^ false ].
  repositories := MCRepositoryGroup default repositories.
  repositoryDescriptions := repositories collect: [ :repo | repo description ].
  selectionIndexes := (1 to: repositoryDescriptions size) asArray.
  selectionIndex := TDChoiceRequest
    prompt: 'Choose target repository'
    labels: repositoryDescriptions
    values: values.
  selectionIndex ifNil: [ ^ false ].
  resolvedVersion := self versions at: index.
  version := resolvedVersion version.
  self mcTool mccopyVersion: version to: {(repositories at: selectionIndex)}.
  ^ true