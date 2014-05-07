tools
clientList: miniTool listElement: listElement
  | max |
  theMiniTool := miniTool.
  projects := projectBlock value.
  max := 0.
  projects do: [ :configDef | max := max max: configDef configurationName size ].
  max := max + 1.
  ^ (projects
    collect: [ :configDef | 
      | stream nm |
      stream := WriteStream on: String new.
      nm := configDef configurationName.
      stream
        nextPutAll: nm;
        space: max - nm size + 1;
        nextPutAll: configDef configurationVersionString.
      stream contents ])
    -> nil