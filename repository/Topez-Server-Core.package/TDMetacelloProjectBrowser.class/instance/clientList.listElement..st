tools
clientList: miniTool listElement: listElement
  | max maxVersion labels |
  theMiniTool := miniTool.
  projects := projectBlock value.
  maxVersion := max := 0.
  labels := {}.
  projects
    do: [ :registrationDef | 
      | one two |
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