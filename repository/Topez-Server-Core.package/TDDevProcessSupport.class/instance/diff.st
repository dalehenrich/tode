as yet unclassified
diff
  | active projectSpecs tool stream patches |
  active := self activeNode.
  projectSpecs := active dotSelfObject
    collect: [ :projectName | 
      | nodeName projectNode projectSpec |
      nodeName := projectName , '/project'.
      projectNode := topez lookup: nodeName.
      projectSpec := projectNode dotSelfObject ].
  tool := topez toolInstanceFor: 'mm'.
  stream := TextStream on: Text new.
  patches := tool mmDiffForProjects: projectSpecs on: stream.
  patches isEmpty
    ifTrue: [ ^ 'No dirty packages' asText allBold ].
  stream contents editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ patches