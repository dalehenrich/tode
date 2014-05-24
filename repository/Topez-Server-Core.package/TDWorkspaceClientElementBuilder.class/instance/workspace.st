accessing
workspace
  workspace
    ifNil: [ 
      "assume a String for now"
      workspace := self object ].
  ^ workspace