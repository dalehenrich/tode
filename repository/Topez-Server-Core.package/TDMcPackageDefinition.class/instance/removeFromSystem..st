cut/copy/paste
removeFromSystem: topez
  | mcTool |
  mcTool := topez toolInstanceFor: 'mc'.
  mcTool mcdeleteWorkingCopy: self workingCopy