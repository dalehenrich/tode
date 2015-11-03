project api
projectNew: projectName projectEntryPath: projectEntryPath packageName: packageName gitRootPath: gitRootPath superclassName: superclasName applicationClassCreationBlock: applicationClassCreationBlock
  ^ self
    projectNew: projectName
    projectEntryPath: projectEntryPath
    packageName: packageName
    gitRootPath: gitRootPath
    requiredProjects: #()
    dependencies: #()
    repositories: #()
    superclassName: superclasName
    applicationClassCreationBlock: applicationClassCreationBlock