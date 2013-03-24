as yet unclassified
mcbrowse
  "mc browse <version-name> <repository-spec>"

  | versionName repoSpec repo version reference mcDefinitions definitions |
  versionName := tokens at: 2.
  repoSpec := tokens at: 3.
  repo := self repositoryFromDescription: repoSpec.
  reference := GoferResolvedReference name: versionName repository: repo.
  version := reference version.
  mcDefinitions := version snapshot definitions
    select: [ :def | def isOrganizationDefinition not ].
  definitions := mcDefinitions collect: [ :def | def asTDDefinition ].
  definitions edit: self topez aspect: #'externalDefinitionList'.
  ^ definitions