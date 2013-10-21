as yet unclassified
mcmerge
  "
   mc merge <package-name> <version-name> <repository-spec>
      merge <package-name> <version-name> @<repository-path>
	"

  | packageName wc package version versionName repoSpec repo |
  packageName := tokens at: 2.
  wc := self resolveWorkingCopyReference: packageName.
  package := wc package.
  versionName := tokens at: 3.
  repoSpec := tokens at: 4.
  repo := self resolveRepositoryReference: repoSpec.
  version := self versionFor: versionName in: repoSpec.
  ^ self mcmerge: wc and: version in: repo