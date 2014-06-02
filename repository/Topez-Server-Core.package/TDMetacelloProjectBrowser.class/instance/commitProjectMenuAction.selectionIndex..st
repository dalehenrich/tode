menu actions
commitProjectMenuAction: listElement selectionIndex: selectionIndex
  | registration commitTemplate commitMessage |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  commitTemplate := registration commitMessageUsing: self projectTool.
  commitMessage := (GsMultiLineTextInteraction
    prompt:
      'Please enter a commit message for project: ' , registration projectName
    template: commitTemplate) signal.
  commitMessage
    ifNil: [ 
      Transcript
        cr;
        show: 'Project save aborted...'.
      ^ false ].
  registration saveProjectUsing: self projectTool commitMessage: commitMessage.
  listElement topez commitTransaction.
  ^ #'refreshView'