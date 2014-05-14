actions
saveProject: aProjectTool registration: aProjectRegistration commitMessage: commitMessage
  | nodeName saveScript commitMessageNode objectRootNode |
  nodeName := self commandMap
    at: 'save'
    ifAbsent: [ ^ aProjectTool projectCommit: aProjectRegistration commitMessage: commitMessage ].
  saveScript := aProjectTool topez lookup: self projectPath , '/' , nodeName.
  objectRootNode := self topez ensureChildrenExistIn: '/tmp/o/'.
  commitMessageNode := TDStringLeafNode new
    name: 'commitMessage asOop printString';
    contents: commitMessage;
    yourself.
  objectRootNode addChildNode: commitMessageNode.
  ^ aProjectTool topez
    evaluateCommandString:
      saveScript printString , '--extensionCall --projectName=' , self projectName
        , ' --message=@' , commitMessageNode printString