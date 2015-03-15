menu actions (baseline)
cloneProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration cloneWithSSH projectEntryPath gitRootPath |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  (GsConfirmInteraction
    prompt: 'Use clone to /sys/stone or /sys/local?'
    confirm: '/sys/stone'
    cancel: '/sys/local') signal
    ifTrue: [ 
      gitRootPath := '$GS_HOME/gemstone/stones/' , self topez serverStoneName.
      projectEntryPath := '/sys/stone/projects/' ]
    ifFalse: [ 
      gitRootPath := registration gitRootPath.
      projectEntryPath := '/sys/local/projects/' ].
  cloneWithSSH := true.
  cloneWithSSH := (GsConfirmInteraction
    prompt:
      'Use SSH (git@github.com:) or HTTPS (https://github.com/) to clone repository?'
    confirm: 'git@github.com (recommended)'
    cancel: 'https://github.com/') signal.
  projectTool
    projectClone: registration
    cloneWithSSH: cloneWithSSH
    projectEntryPath: projectEntryPath
    gitRootPath: gitRootPath.
  listElement topez commitTransaction.
  ^ #'refreshView'