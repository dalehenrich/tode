as yet unclassified
mccopyVersion: version to: repositoryList
  ^ repositoryList
    collect: [ :repo | self storeVersion: version inRepository: repo ]