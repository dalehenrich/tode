actions
workingCopySave: listElement selectedIndex: index
  | repository |
  index = 0
    ifTrue: [ ^ false ].
  repository := self repositories at: index.
  self mcTool commitWorkingCopyPrompting: self workingCopy repos: {repository}.
  ^ #'refreshList'