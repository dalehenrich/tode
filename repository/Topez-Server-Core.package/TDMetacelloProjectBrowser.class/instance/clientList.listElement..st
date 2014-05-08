tools
clientList: miniTool listElement: listElement
  | max maxVersion |
  theMiniTool := miniTool.
  projects := projectBlock value.
  maxVersion := max := 0.
  projects
    do: [ :registrationDef | 
      max := max max: registrationDef projectName size.
      maxVersion := maxVersion max: registrationDef versionString size ].
  max := max + 2.
  maxVersion := maxVersion + 2.
  ^ (projects
    collect: [ :registrationDef | 
      | stream nm vs |
      stream := WriteStream on: String new.
      nm := registrationDef projectName.
      vs := registrationDef versionString.
      stream
        nextPutAll: nm;
        space: max - nm size;
        nextPutAll: vs;
        space: maxVersion - vs size;
        nextPutAll: registrationDef repositoryDescription.
      stream contents ])
    -> nil