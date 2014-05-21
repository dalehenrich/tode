menu actions (baseline)
cloneProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration gitTool entry gitRootPath gitRootDir githubRepo response repositoryDirPath projectDirPath githubPath projectDir pathElements versionElement versionComponents githubSha projectPathElements |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  entry := registration entry.
  gitRootPath := entry gitRootPath.
  gitRootDir := ServerFileDirectory on: gitRootPath.
  githubRepo := registration projectSpec repository createRepository.
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
  gitTool := self gitTool.
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
  self projectTool projectMap: registration toRepository: entry repository.
  registration versionInfo versionString: githubSha.
  ^ #'refreshList'