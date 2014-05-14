menu actions
commitProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration commitMessage |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  commitMessage := (GsMultiLineTextInteraction
    prompt:
      'Please enter a commit message for project: ' , registration projectName)
    signal.
  commitMessage
    ifNil: [ 
      Transcript
        cr;
        show: 'Project save aborted...'.
      ^ false ].
  self projectTool projectCommit: registration commitMessage: commitMessage.
  ^ #'refreshList'