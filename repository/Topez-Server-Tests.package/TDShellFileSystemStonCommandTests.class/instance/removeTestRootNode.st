private
removeTestRootNode
  | dir |
  super removeTestRootNode.
  dir := ServerFileDirectory on: self fileSystemRootPath.
  dir exists
    ifTrue: [ dir recursiveDelete ]