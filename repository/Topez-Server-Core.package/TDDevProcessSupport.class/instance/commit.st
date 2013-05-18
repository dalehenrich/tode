as yet unclassified
commit
  | active commitMessageNode |
  commitMessageNode := self commitMessageNode.
  active := self activeNode.
  active dotSelfObject
    do: [ :projectName | 
      Transcript
        cr;
        show: 'Committing: ' , projectName.
      self commitProject: projectName message: commitMessageNode printString ]