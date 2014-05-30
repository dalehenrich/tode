actions
flushRepositoryCache: listElement selectedIndex: selectedIndex
  MCRepositoryGroup default repositoriesDo: [ :rep | rep flushCache ].
  ^ true