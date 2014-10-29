project api
projectLoadConfiguration: projectName version: version repositoryDescription: repositoryDescription className: className loads: loads
  "required args plus reasonable defaults"

  ^ self
    projectLoad: projectName
    doGet: true
    gsDeployer: #'bulk'
    selector: #'configuration:'
    description: repositoryDescription
    className: className
    loads: loads
    version: version
    onConflict: #'useIncoming'
    onDowngrade: nil
    onLock: #'honor'
    onUpgrade: nil
    ignoreImage: nil
    silently: nil
    cacheRepository: nil
    overrides: nil