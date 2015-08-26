as yet unclassified
mcsave
  "
  mc save <pkg-name> <version-name> <repository-spec> <commit-message>
     save <pkg-name> <version-name> @<repository-path> @<commit-message>
"

  | packageName wc versionName repoSpec repo commitMessage newVersion |
  packageName := tokens at: 2.
  wc := self resolveWorkingCopyReference: packageName.
  versionName := tokens at: 3.
  repoSpec := tokens at: 4.
  repo := self resolveRepositoryReference: repoSpec.
  commitMessage := tokens at: 5.
  (commitMessage beginsWith: '@')
    ifTrue: [ commitMessage := self resolveAtPathReference: commitMessage ].
  newVersion := [ wc newVersion ]
    on: MCVersionNameAndMessageRequest
    do: [ :notification | notification resume: (Array with: versionName with: commitMessage) ].
  self storeVersion: newVersion inRepository: repo.
  ^ newVersion