project api
projectClone: registration cloneWithSSH: cloneWithSSH projectEntryPath: projectEntryPath gitRootPath: gitRootPath checkout: commitishOrNil
  | gitRootDir githubRepo repositoryDirPath projectDir projectDirPath githubPath pathElements versionElement versionComponents githubSha gitTool response projectPathElements gitRepoDirectory gitRepoDirName cloneUrl checkout gitRepoDir |
  gitRootDir := ServerFileDirectory on: gitRootPath.
  gitTool := topez toolInstanceFor: 'git'.
  registration canBeCloned
    ifFalse: [ 
      [ 
      registration hasGitRepository
        ifFalse: [ self error: 'Cannot clone a repository that does not use git' ].
      gitRepoDir := registration gitRepoDirectory.
      gitTool gitrevparseShowTopLevelIn: gitRepoDir.	"if this command returns then a git repository is already present in gitRootDir ... which is a good thing"
      self
        inform:
          'A git repo is already present at ' , gitRepoDir fullName printString.
      self
        reregisterClonedProject: registration
        repositoryDescription: registration repositoryDescription
        projectEntryPath: projectEntryPath.
      ^ self ]
        on: Error
        do: [ :ignored | 
          self
            error:
              'Expected a git repository to present in the directory: '
                , gitRepoDir fullName printString ] ].
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
  self
    reregisterClonedProject: registration
    repositoryDescription:
      'filetree://' , gitRootPath , '/' , gitRepoDirName , '/' , githubRepo repoPath
    projectEntryPath: projectEntryPath.
  registration isLoadedInImage
    ifTrue: [ registration versionInfo versionString: githubSha ]