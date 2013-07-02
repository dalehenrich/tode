as yet unclassified
mccopy: versionName from: sourcRepoDescription to: destinationRepoDescriptions
  "destinationRepoDescriptions may include repository descriptions or object references (@xxx)"

  | version repo |
  version := self versionFor: versionName in: sourcRepoDescription.
  ^ destinationRepoDescriptions
    collect: [ :repoSpec | 
      | repoOrList |
      repoOrList := self resolveRepositoryReference: repoSpec.
      repoOrList isCollection
        ifTrue: [ repoOrList do: [ :repo | repo storeVersion: version ] ]
        ifFalse: [ repoOrList storeVersion: version ] ]