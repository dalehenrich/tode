as yet unclassified
commit
  | active commitMessageNode |
  commitMessageNode := self commitMessageNode.
  active := self activeNode.
  active dotSelfObject
    do: [ :projectName | 
      (self
        commitProject: projectName
        message: commitMessageNode dotSelfObject asString)
        ifTrue: [ 
          (self gitPathFor: projectName) notNil
            ifTrue: [ self postCommitForGitRepo: projectName ]
            ifFalse: [ self postCommitFor: projectName message: commitMessageNode printString ] ] ]