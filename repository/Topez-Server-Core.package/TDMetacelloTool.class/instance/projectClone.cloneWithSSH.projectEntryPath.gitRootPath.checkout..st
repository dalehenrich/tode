project api
projectClone: registration cloneWithSSH: cloneWithSSH projectEntryPath: projectEntryPath gitRootPath: gitRootPath checkout: commitishOrNil
  | gitRootDir githubRepo repositoryDirPath projectDir projectDirPath githubPath pathElements versionElement versionComponents githubSha gitTool response projectPathElements newRegistration gitRepoDirectory gitRepoDirName cloneUrl checkout |
  gitRootDir := ServerFileDirectory on: gitRootPath.
  gitTool := topez toolInstanceFor: 'git'.
  githubRepo := registration cloneProjectSpec repository createRepository.
  githubRepo directory exists
    ifTrue: [ 
      [ 
      gitTool gitrevparseShowTopLevelIn: githubRepo directory.	"if this command returns then a git repository is already present in gitRootDir"
      self inform: 'A git repo is already present at ' , gitRootPath printString.
      ^ self ]
        on: Error
        do: [ :ignored | 
          "error means that the repository has not already been cloned ... proceed"
          self halt ] ].
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
  cloneUrl := cloneWithSSH
    ifTrue: [ 'git@github.com:' ]
    ifFalse: [ 'https://github.com/' ].
  response := gitTool
    gitcloneIn: gitRootDir
    with: '--no-checkout ' , cloneUrl , githubRepo projectPath , '.git'.
  response
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'gitStatus';
        yourself).
  projectPathElements := githubRepo projectPath findTokens: '/'.
  gitRepoDirName := projectPathElements at: 2.
  gitRepoDirectory := gitRootDir directoryNamed: gitRepoDirName.
  checkout := commitishOrNil
    ifNotNil: [ :commitish | commitish ]
    ifNil: [ githubRepo projectVersion ].
  gitTool gitcheckoutIn: gitRepoDirectory with: checkout.
  [ gitTool gitsymbolicrefIn: gitRepoDirectory with: 'HEAD' ]
    on: Error
    do: [ :ex | 
      | newBranchName |
      "detached HEAD ... need to create new branch"
      newBranchName := (GsTextInteraction
        prompt:
          'There is no branch associated with ' , checkout printString
            ,
              '.
Please specify a new branch name to use for this checkout. 
If you cancel, a branch name can be specified at a later date.'
        template: 'my_' , checkout) signal.
      newBranchName
        ifNotNil: [ 
          newBranchName isEmpty
            ifFalse: [ gitTool gitcheckoutIn: gitRepoDirectory with: '-b ' , newBranchName ] ] ].
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
    entryNode: registration projectPath: projectEntryPath topez: self topez.	"force creation of a /sys/stone/projects project entry with cloned information"
  registration isLoadedInImage
    ifTrue: [ registration versionInfo versionString: githubSha ]