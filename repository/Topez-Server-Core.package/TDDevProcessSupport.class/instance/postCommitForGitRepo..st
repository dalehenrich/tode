as yet unclassified
postCommitForGitRepo: projectName
  | gitPath commandBase command result commitMessageNode info projectNode |
  gitPath := self gitPathFor: projectName.
  commandBase := 'git --git-dir ' , gitPath , '/.git --work-tree ' , gitPath.
  command := commandBase , ' add -A '.
  self performOnServer: command.
  command := commandBase , ' status '.
  self performOnServer: command.
  commitMessageNode := self commitMessageNode.
  command := commandBase , ' commit -a -m"' , commitMessageNode printString
    , '"'.
  self performOnServer: command.
  command := commandBase , ' log -1'.
  info := self performOnServer: command.
  projectNode := topez lookup: projectName.
  projectNode
    addChildNode:
      (TDTxtLeafNode new
        name: 'STATUS';
        contents: info;
        yourself)