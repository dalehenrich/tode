project
projectEntryObjectFromUrl: url nodePath: projectPath
  | node projectDirNode projectEntryNode entry existingNode theProjectPath |
  projectEntryNode := self projectProjectEntryFromUrl: url.
  projectEntryNode topez: self topez.
  entry := projectEntryNode dotSelfObject.
  self projectRegistrationDefinitionMap
    at: entry projectName
    ifPresent: [ :existing | 
      self
        inform:
          'A project entry for ' , entry projectName printString
            ,
              ' is already defined in this stones'' /projects node, download skipped.'.
      ^ existing ].
  theProjectPath := projectPath.
  TDProjectEntryOutermostProjectPath signal
    ifNotNil: [ :outerMostProjectPath | theProjectPath := outerMostProjectPath ].
  projectDirNode := self topez lookup: theProjectPath.
  existingNode := true.
  node := projectDirNode
    childNamed: projectEntryNode name
    ifAbsent: [ 
      existingNode := false.
      projectDirNode addChildLeafNode: projectEntryNode ].
  existingNode
    ifTrue: [ 
      self
        error:
          'A node named ' , projectEntryNode name printString , ' already exists in '
            , theProjectPath printString ].
  node topez: self topez.
  ^ node dotSelfObject
    projectPath: theProjectPath;
    yourself