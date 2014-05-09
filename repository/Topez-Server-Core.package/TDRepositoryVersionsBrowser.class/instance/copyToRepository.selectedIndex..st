actions
copyToRepository: listElement selectedIndex: index
  | resolvedVersion selectedRepository repositoryDescriptions version repositories selectionIndex |
  index = 0
    ifTrue: [ ^ false ].
  repositories := MCRepositoryGroup default repositories.
  repositoryDescriptions := repositories collect: [ :repo | repo description ].
  selectionIndex := (GsChoiceInteraction
    prompt: 'Choose target repository'
    labels: repositoryDescriptions
    values: nil) signal.
  selectionIndex ifNil: [ ^ false ].
  resolvedVersion := self versions at: index.
  version := resolvedVersion version.
  self mcTool mccopyVersion: version to: {(repositories at: selectionIndex)}.
  ^ true