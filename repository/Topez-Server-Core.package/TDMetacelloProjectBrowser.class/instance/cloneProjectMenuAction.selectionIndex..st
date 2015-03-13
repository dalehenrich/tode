menu actions (baseline)
cloneProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration cloneWithSSH |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  cloneWithSSH := true.
  cloneWithSSH := (GsConfirmInteraction
    prompt:
      'Use SSH (git@github.com:) or HTTPS (https://github.com/) to clone repository?'
    confirm: 'git@github.com (recommended)'
    cancel: 'https://github.com/') signal.
  projectTool projectClone: registration cloneWithSSH: cloneWithSSH.
  listElement topez commitTransaction.
  ^ #'refreshView'