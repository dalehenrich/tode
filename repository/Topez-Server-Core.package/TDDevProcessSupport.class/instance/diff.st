as yet unclassified
diff
  | active script |
  active := self activeNode.
  script := 'mm diff '.
  active dotSelfObject
    do: [ :projectName | 
      | nodeName projectNode projectSpec |
      nodeName := projectName , '/project'.
      projectNode := topez lookup: nodeName.
      projectSpec := projectNode dotSelfObject.
      script := script , projectSpec name , ' ' ].
  topez evaluateTopezScript: script