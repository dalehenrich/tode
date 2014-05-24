actions
saveProjectUsing: aProjectTool commitMessage: commitMessage
  ^ self entry
    saveProject: aProjectTool
    registration: self
    commitMessage: commitMessage