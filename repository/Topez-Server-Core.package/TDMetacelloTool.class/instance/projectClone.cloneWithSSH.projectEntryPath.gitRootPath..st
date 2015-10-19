project api
projectClone: registration cloneWithSSH: cloneWithSSH projectEntryPath: projectEntryPath gitRootPath: gitRootPath
  ^ self
    projectClone: registration
    cloneWithSSH: cloneWithSSH
    projectEntryPath: projectEntryPath
    gitRootPath: gitRootPath
    checkout: nil