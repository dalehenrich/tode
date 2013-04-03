as yet unclassified
mcbrowse
  "mc browse <version-name> <repository-spec>"

  | versionName snapshot mcDefinitions definitions |
  versionName := tokens at: 2.
  tokens size > 2
    ifTrue: [ 
      | repoSpec repo reference version |
      repoSpec := tokens at: 3.
      repo := self repositoryFromDescription: repoSpec.
      reference := GoferResolvedReference name: versionName repository: repo.
      version := reference version.
      snapshot := version snapshot ]
    ifFalse: [ 
      | packageName workingCopy |
      packageName := tokens at: 2.
      workingCopy := MCWorkingCopy allManagers
        detect: [ :wc | wc packageName = packageName ]
        ifNone: [ ^ 'no matching package found' ].
      snapshot := workingCopy package snapshot ].
  mcDefinitions := snapshot definitions
    select: [ :def | def isOrganizationDefinition not ].
  definitions := mcDefinitions collect: [ :def | def asTDDefinition ].
  definitions edit: self topez aspect: #'externalDefinitionList'.
  ^ definitions