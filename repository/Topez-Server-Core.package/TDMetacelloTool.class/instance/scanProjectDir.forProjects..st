private
scanProjectDir: projectDirNode forProjects: projectBlock
  projectDirNode
    composedChildrenDo: [ :composedParentNode :projectNode | 
      | composedParentPath |
      composedParentPath := composedParentNode
        ifNotNil: [ composedParentNode printString ].
      projectNode isLeaf
        ifFalse: [ 
          | entry |
          entry := projectNode dotSelfObject.
          entry
            projectPath: composedParentPath;
            projectNodeName: projectNode name;
            yourself.
          projectBlock value: entry ] ]