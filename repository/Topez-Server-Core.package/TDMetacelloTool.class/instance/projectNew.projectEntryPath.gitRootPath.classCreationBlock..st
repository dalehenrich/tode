project api
projectNew: projectName projectEntryPath: projectEntryPath gitRootPath: gitRootPath classCreationBlock: classCreationBlock
  | gitRepoDir gitTool projectRepoPath projectEntry baselineClassName |
  gitRepoDir := ServerFileDirectory on: gitRootPath , '/' , projectName.
  gitRepoDir assureExistence.
  gitRepoDir createDirectory: 'repository'.
  gitTool := topez toolInstanceFor: 'git'.
  projectRepoPath := gitRepoDir fullName , '/repository'.
  projectEntry := TDProjectSpecEntryDefinition new.
  baselineClassName := 'BaselineOf' , projectName.
  projectEntry
    baseline: projectName
    repository: projectRepoPath
    loads: #('default').
  projectEntry createProjectEntryNode: projectEntryPath topez: self topez.
  gitTool gitinitIn: gitRepoDir with: ''