as yet unclassified
mcbrowse
  "mc browse <version-name> <repository-spec>
      browse <version-name> @<repository-path>
      browse <package-name>
      browse @<workingCopy-path>
  "

  | versionName snapshot mcDefinitions definitions |
  versionName := tokens at: 2.
  tokens size > 2
    ifTrue: [ 
      | repoSpec repo reference version |
      repoSpec := tokens at: 3.
      repo := self resolveRepositoryReference: repoSpec.
      reference := GoferResolvedReference name: versionName repository: repo.
      version := reference version.
      snapshot := version snapshot ]
    ifFalse: [ 
      | packageName workingCopy |
      packageName := tokens at: 2.
      workingCopy := self resolveWorkingCopyReference: packageName.
      snapshot := workingCopy package snapshot ].
  ^ self mcbrowseSnapshot: snapshot