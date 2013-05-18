as yet unclassified
commit
  | active commitMessageNode |
  commitMessageNode := self commitMessageNode.
  active := self activeNode.
  active dotSelfObject
    do: [ :projectName | 
      | nodeName projectNode projectSpec |
      Transcript
        cr;
        show: 'Committing: ' , projectName.
      nodeName := projectName , '/project'.
      projectNode := topez lookup: nodeName.
      projectSpec := projectNode dotSelfObject.
      true
        ifTrue: [ 
          topez
            evaluateTopezScript:
              'mm commit ' , projectSpec name , ' @' , commitMessageNode printString ] ]