tools
clientList: miniTool listElement: listElement
  | max maxVersion |
  theMiniTool := miniTool.
  projects := projectBlock value.
  maxVersion := max := 0.
  projects
    do: [ :registrationDef | 
      | offset |
      offset := 0.
      registrationDef isDirty
        ifTrue: [ offset := 2 ].
      max := max max: registrationDef projectName size + offset.
      maxVersion := maxVersion max: registrationDef versionString size ].
  max := max + 2.
  maxVersion := maxVersion + 2.
  ^ (projects
    collect: [ :registrationDef | 
      | stream nm vs offset |
      stream := WriteStream on: String new.
      nm := registrationDef projectName.
      vs := registrationDef versionString.
      offset := 0.
      registrationDef isDirty
        ifTrue: [ 
          stream nextPutAll: '* '.
          offset := 2 ].
      stream
        nextPutAll: nm;
        space: max - (nm size + offset);
        nextPutAll: vs;
        space: maxVersion - vs size;
        nextPutAll: registrationDef repositoryDescription.
      stream contents ])
    -> nil