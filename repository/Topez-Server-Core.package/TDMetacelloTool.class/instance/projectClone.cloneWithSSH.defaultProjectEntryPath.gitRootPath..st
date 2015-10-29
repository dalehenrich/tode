project api
projectClone: registration cloneWithSSH: cloneWithSSH defaultProjectEntryPath: defaultProjectEntryPath gitRootPath: gitRootPath
  ^ self
    projectClone: registration
    cloneWithSSH: cloneWithSSH
    defaultProjectEntryPath: defaultProjectEntryPath
    gitRootPath: gitRootPath
    checkout: nil