project api
projectLoad: projectName selector: projectSelector repositoryDescription: repositoryDescription loads: loads version: version
  ^ self
    projectLoad: projectName
    doGet: true
    selector: projectSelector
    repositoryDescription: repositoryDescription
    loads: loads
    version: version
    onConflict: #'useIncoming'
    onDowngrade: nil
    onLock: #'honor'
    onUpgrade: nil
    ignoreImage: nil
    silently: nil
    cacheRepository: nil
    repositoryOverrides: nil