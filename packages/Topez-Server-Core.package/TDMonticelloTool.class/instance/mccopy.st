as yet unclassified
mccopy
  "mc copy <version-name> <source-repository-spec> <destination-repository-spec>"

  | versionName repo1Spec repo2Spec version repo2 |
  versionName := tokens at: 2.
  repo1Spec := tokens at: 3.
  repo2Spec := tokens at: 4.
  version := self versionFor: versionName in: repo1Spec.
  repo2 := self repositoryFromDescription: repo2Spec.
  ^ repo2 storeVersion: version