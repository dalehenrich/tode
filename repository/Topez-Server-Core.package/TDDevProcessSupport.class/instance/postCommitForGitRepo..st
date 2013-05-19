as yet unclassified
postCommitForGitRepo: projectName
  | gitPath commandBase command result commitMessageNode commitMessage info projectNode |
  gitPath := self gitPathFor: projectName.
  commandBase := 'git --git-dir ' , gitPath , '/.git --work-tree ' , gitPath.
  command := commandBase , ' add -A '.
  self performOnServer: command.
  command := commandBase , ' status '.
  self performOnServer: command.
  commitMessageNode := self commitMessageNode.
  commitMessage := commitMessageNode dotSelfObject asString.
  command := commandBase , ' commit -a -m"' , commitMessage , '"'.
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