private
scanProjectDir: projectDirNode forProjects: projectBlock
  projectDirNode
    childrenDo: [ :projectNode | 
      projectNode isLeaf
        ifFalse: [ 
          | entry |
          entry := projectNode dotSelfObject.
          entry
            projectPath: projectDirNode printString;
            projectNodeName: projectNode name;
            yourself.
          projectBlock value: entry ] ]