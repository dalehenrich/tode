project api
projectClone: registration cloneWithSSH: cloneWithSSH gitRootPath: gitRootPath
  | gitRootDir githubRepo repositoryDirPath projectDir projectDirPath githubPath pathElements versionElement versionComponents githubSha gitTool response projectPathElements newRegistration gitRepoDirectory gitRepoDirName cloneUrl |
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
  cloneUrl := cloneWithSSH
    ifTrue: [ 'git@github.com:' ]
    ifFalse: [ 'https://github.com/' ].
  response := gitTool
    gitcloneIn: gitRootDir
    with: '--no-checkout ' , cloneUrl , githubRepo projectPath , '.git'.
  (response beginsWith: 'fatal:')
    ifTrue: [ self error: response ].
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  projectPathElements := githubRepo projectPath findTokens: '/'.
  gitRepoDirName := projectPathElements at: 2.
  gitRepoDirectory := gitRootDir directoryNamed: gitRepoDirName.
  response := gitTool
    gitcheckoutIn: gitRepoDirectory
    with: githubRepo projectVersion.
  (response beginsWith: 'fatal:')
    ifTrue: [ self error: response ].
  response := gitTool gitsymbolicrefIn: gitRepoDirectory with: 'HEAD'.
  (response beginsWith: 'fatal:')
    ifTrue: [ 
      | newBranchName |
      "detached HEAD ... need to create new branch"
      newBranchName := (GsTextInteraction
        prompt:
          'There is no branch associated with ' , githubRepo projectVersion printString
            ,
              '.
Please specify a new branch name to use for this checkout. 
If you cancel, a branch name can be specified at a later date.'
        template: 'my_' , githubRepo projectVersion) signal.
      newBranchName
        ifNotNil: [ 
          response := gitTool gitcheckoutIn: gitRepoDirectory with: '-b ' , newBranchName.
          (response beginsWith: 'fatal:')
            ifTrue: [ self error: response ] ] ].
  Metacello new
    baseline: registration projectName;
    repository:
        'filetree://' , gitRootPath , '/' , gitRepoDirName , '/' , githubRepo repoPath;
    register;
    lock.
  newRegistration := self projectRegistrationFor: registration projectName.
  (self topez toolInstanceFor: 'project')
    projectMap: registration
    from: githubRepo
    toRepository: newRegistration repository.
  newRegistration
    entry: nil;
    entryNode: registration topez: self topez.	"force creation of a /sys/stone/projects project entry with cloned information"
  registration isLoadedInImage
    ifTrue: [ registration versionInfo versionString: githubSha ]