tools
clientList: miniTool listElement: listElement
  | max maxVersion labels selectedProjectIndex projectList count |
  theMiniTool := miniTool.
  projects := projectBlock value.
  maxVersion := max := 0.
  labels := {}.
  selectedProjectIndex := nil.
  count := 1.
  projects
    do: [ :registrationDef | 
      | one two |
      selectedProjectName = registrationDef projectName
        ifTrue: [ selectedProjectIndex := count ].
      count := count + 1.
      labels
        add:
          {(one := registrationDef fieldOne).
          (two := registrationDef fieldTwo).
          (registrationDef fieldThree).
          (registrationDef emphasis)}.
      max := max max: one size.
      maxVersion := maxVersion max: two size ].
  max := max + 2.
  maxVersion := maxVersion + 2.
  projectList := labels
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
      Text string: stream contents attributes: textAttributes ].
  ^ projectList -> selectedProjectIndex