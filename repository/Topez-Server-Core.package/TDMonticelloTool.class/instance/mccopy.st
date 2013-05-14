as yet unclassified
mccopy
  "mc copy <version-name> <source-repository-spec> <destination-repository-spec>
      copy @<version-path> <destination-repository-spec>
      copy @<version-path> @<repository-path>
  "

  | repoSpec version repo resolutionAr |
  resolutionAr := self resolveVersionReferenceStartingAt: 2 inTokens: tokens.
  version := resolutionAr at: 1.
  repoSpec := tokens at: (resolutionAr at: 2).
  repo := self resolveRepositoryReference: repoSpec.
  ^ repo storeVersion: version