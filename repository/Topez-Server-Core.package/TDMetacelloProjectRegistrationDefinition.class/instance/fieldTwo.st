project list
fieldTwo
  | vs cvs branch |
  self isConfigProjectValid
    ifFalse: [ ^ 'INVALID project spec project' ].
  vs := self versionString.
  cvs := self currentVersionString.
  branch := self currentBranchName.
  branch isEmpty
    ifFalse: [ branch := ' [' , branch , ']' ].
  cvs = vs
    ifTrue: [ vs := vs , branch ]
    ifFalse: [ vs := vs , ' ^ ' , cvs , branch ].
  ^ vs