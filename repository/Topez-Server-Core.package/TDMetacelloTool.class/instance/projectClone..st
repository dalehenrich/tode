project api
projectClone: registration
  | gitRootPath gitRootDir githubRepo repositoryDirPath projectDir projectDirPath githubPath pathElements versionElement versionComponents githubSha gitTool response projectPathElements newRegistration |
  gitRootPath := registration gitRootPath.
  gitRootDir := ServerFileDirectory on: gitRootPath.
  githubRepo := registration cloneProjectSpec repository createRepository.
  repositoryDirPath := githubRepo directory fullName.
  projectDir := MCGitHubRepository cacheDirectoryFor: githubRepo projectPath.
  projectDirPath := (projectDir directoryNamed: githubRepo projectVersion)
    fullName.
  (repositoryDirPath beginsWith: projectDirPath)
    ifFalse: [ self error: 'repository path does not match project path ... cannot continue' ].
  githubPath := repositoryDirPath
    copyFrom: projectDirPath size + 2
    to: repositoryDirPath size.
  pathElements := githubPath findTokens: '/'.
  versionElement := pathElements at: 1.
  versionComponents := versionElement findTokens: '-'.
  githubSha := versionComponents last.
  gitTool := topez toolInstanceFor: 'git'.
  response := gitTool
    gitcloneIn: gitRootDir
    with:
      '--branch ' , githubRepo projectVersion , ' git@github.com:'
        , githubRepo projectPath , '.git'.
  (response beginsWith: 'fatal:')
    ifTrue: [ self error: response ].
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  projectPathElements := githubRepo projectPath findTokens: '/'.
  Metacello new
    baseline: registration projectName;
    repository:
        'filetree://' , gitRootPath , '/' , (projectPathElements at: 2) , '/'
            , githubRepo repoPath;
    register.
  newRegistration := self projectRegistrationFor: registration projectName.
  (self topez toolInstanceFor: 'project')
    projectMap: registration
    from: githubRepo
    toRepository: newRegistration repository.
  registration isLoadedInImage
    ifTrue: [ registration versionInfo versionString: githubSha ]