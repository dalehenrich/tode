as yet unclassified
mccopy: versionName fromRepository: sourcRepository to: destinationRepoDescriptions
  "destinationRepoDescriptions may include repository descriptions or object references (@xxx)"

  | version repo repositoryList |
  version := self versionFor: versionName inRepository: sourcRepository.
  repositoryList := OrderedCollection new.
  destinationRepoDescriptions
    do: [ :repoSpec | 
      | repoOrList |
      repoOrList := self resolveRepositoryReference: repoSpec.
      repoOrList isCollection
        ifTrue: [ repositoryList addAll: repoOrList ]
        ifFalse: [ repositoryList add: repoOrList ] ].
  ^ self mccopyVersion: version to: repositoryList