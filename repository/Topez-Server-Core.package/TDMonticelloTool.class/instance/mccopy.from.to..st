as yet unclassified
mccopy: versionName from: sourcRepoDescription to: destinationRepoDescription
  | version repo |
  version := self versionFor: versionName in: sourcRepoDescription.
  repo := self repositoryFromDescription: destinationRepoDescription.
  ^ repo storeVersion: version