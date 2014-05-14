actions
saveProjectUsing: aProjectTool commitMessage: commitMessage
  ^ self extension
    saveProject: aProjectTool
    registration: self
    commitMessage: commitMessage