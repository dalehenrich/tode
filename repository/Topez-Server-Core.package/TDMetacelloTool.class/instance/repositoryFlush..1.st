repository api
repositoryFlush
  ^ MCRepositoryGroup default repositoriesDo: [ :rep | rep flushCache ]