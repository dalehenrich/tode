as yet unclassified
mcload
  "mc load <version-name> <repository-spec>
      load <version-name> @<repository-path>
      load <package-name> <repository-spec>
      load <package-name> @<repository-path>
  "

  | versionName repoSpec repo |
  versionName := tokens at: 2.
  repoSpec := tokens at: 3.
  repo := self resolveRepositoryReference: repoSpec.
  ^ self mcload: versionName from: repo