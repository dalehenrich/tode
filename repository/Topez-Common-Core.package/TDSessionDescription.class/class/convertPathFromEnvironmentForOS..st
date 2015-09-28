os utility
convertPathFromEnvironmentForOS: environmentVarName
  "tODE runs on windows in a bash shell. but internal to the image, 
   bash shell paths (unix-style) must be converted back to c:.... 
   on windows"

  | path segments os |
  os := Smalltalk perform: #'os'.
  path := os environment at: environmentVarName.
  ((os perform: #'isWindows') or: [ path isNil ])
    ifFalse: [ ^ path ].
  segments := (path perform: #'asFileReference') path perform: #'segments'.
  path at: 1 put: (path at: 1) , ':'.
  ^ (((Smalltalk at: #'AbsolutePath') withAll: path) perform: #'asFileReference')
    fullName