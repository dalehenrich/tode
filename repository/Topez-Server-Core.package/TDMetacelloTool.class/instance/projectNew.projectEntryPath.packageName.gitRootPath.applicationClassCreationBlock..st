project api
projectNew: projectName projectEntryPath: projectEntryPath packageName: packageName gitRootPath: gitRootPath applicationClassCreationBlock: applicationClassCreationBlock
  | gitRepoDir gitTool projectRepoPath projectEntry mcTool wc registration |
  gitRepoDir := ServerFileDirectory on: gitRootPath , '/' , projectName.
  gitRepoDir assureExistence.
  gitRepoDir createDirectory: 'repository'.
  gitTool := topez toolInstanceFor: 'git'.
  projectRepoPath := gitRepoDir fullName , '/repository'.
  projectEntry := TDProjectSpecEntryDefinition new.
  projectEntry
    baseline: projectName
      repository: 'filetree://' , projectRepoPath
      loads: #('default');
    status: #(#'active');
    locked: true.
  projectEntry createProjectEntryNode: projectEntryPath topez: self topez.
  mcTool := topez toolInstanceFor: 'mc'.
  wc := mcTool mccreate: 'BaselineOf' , projectName.
  wc modified: true.
  wc repositoryGroup addRepository: projectEntry repository.
  wc := mcTool mccreate: packageName.
  wc modified: true.
  wc repositoryGroup addRepository: projectEntry repository.
  self createBaselineOf: projectName withPackageNamed: packageName.
  applicationClassCreationBlock
    value: 'Object'
    value: projectName
    value: packageName.
  gitTool gitinitIn: gitRepoDir with: ''.
  registration := self resolveProjectRegistrationReference: projectName.
  self
    projectCommit: registration
    configCommit: false
    gitCommit: true
    commitMessage: 'initial commit'.
  registration loadProjectUsing: self