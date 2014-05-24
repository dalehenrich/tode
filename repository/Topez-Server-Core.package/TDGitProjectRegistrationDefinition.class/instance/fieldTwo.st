project list
fieldTwo
  | vs branch |
  vs := self versionString.
  branch := self currentBranchName.
  branch isEmpty
    ifFalse: [ branch := ' [' , branch , ']' ].
  ^ vs , branch