as yet unclassified
mccopy: versionName from: sourcRepoDescription to: destinationRepoDescriptions
  "destinationRepoDescriptions may include repository descriptions or object references (@xxx)"

  | version repo repositoryList |
  version := self versionFor: versionName in: sourcRepoDescription.
  repositoryList := OrderedCollection new.
  destinationRepoDescriptions
    do: [ :repoSpec | 
      | repoOrList |
      repoOrList := self resolveRepositoryReference: repoSpec.
      repoOrList isCollection
        ifTrue: [ repositoryList addAll: repoOrList ]
        ifFalse: [ repositoryList add: repoOrList ] ].
  ^ self mccopyVersion: version to: repositoryList