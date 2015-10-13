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
            baseProjectPath: composedParentPath;
            projectPath: projectDirNode printString;
            projectNodeName: projectNode name;
            yourself.
          projectBlock value: entry ] ]