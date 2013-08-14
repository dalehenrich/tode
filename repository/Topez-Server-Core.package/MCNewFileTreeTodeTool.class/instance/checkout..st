as yet unclassified
checkout: branchName
  | gitTool |
  gitTool := self gitTool.
  gitTool gitcheckoutIn: self tmpGitDir with: branchName.
  self updateRepo
    ifTrue: [ gitTool gitpullIn: self tmpGitDir with: 'origin ' , branchName ]