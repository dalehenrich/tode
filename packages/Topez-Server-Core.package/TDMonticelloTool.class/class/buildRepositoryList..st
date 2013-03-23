as yet unclassified
buildRepositoryList: repositoryList
  ^ (repositoryList
    collect: [ :repo | TDMonticelloRepository fromRepository: repo ]) asArray