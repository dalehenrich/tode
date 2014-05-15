tools
clientList: miniTool listElement: listElement
  | max maxVersion labels |
  theMiniTool := miniTool.
  projects := projectBlock value.
  maxVersion := max := 0.
  labels := {}.
  projects
    do: [ :registrationDef | 
      | nm vs rd cvs branch |
      nm := registrationDef projectName.
      registrationDef isDirty
        ifTrue: [ nm := '* ' , nm ].
      vs := registrationDef versionString.
      cvs := registrationDef currentVersionString.
      branch := registrationDef currentBranchName.
      branch isEmpty
        ifFalse: [ branch := ' [' , branch , ']' ].
      cvs = vs
        ifTrue: [ vs := vs , branch ]
        ifFalse: [ vs := vs , ' ^ ' , cvs , branch ].
      rd := registrationDef repositoryDescription.
      labels
        add:
          {nm.
          vs.
          rd.
          (registrationDef emphasis)}.
      max := max max: nm size.
      maxVersion := maxVersion max: vs size ].
  max := max + 2.
  maxVersion := maxVersion + 2.
  ^ (labels
    collect: [ :ar | 
      | stream nm vs rd textAttributes |
      stream := WriteStream on: String new.
      nm := ar at: 1.
      vs := ar at: 2.
      rd := ar at: 3.
      textAttributes := ar at: 4.
      stream
        nextPutAll: nm;
        space: max - nm size;
        nextPutAll: vs;
        space: maxVersion - vs size;
        nextPutAll: rd.
      Text string: stream contents attributes: textAttributes ])
    -> nil