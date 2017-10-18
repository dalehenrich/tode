initialization
pharo30InstallTodeClient
  "setup paths"

  Smalltalk
    at: #'Deprecation'
    ifPresent: [ :cls | 
      cls
        perform: #'showWarning:' with: false;
        perform: #'raiseWarning:' with: false ].
  (Smalltalk os environment
    at: 'GS_HOME'
    ifAbsent: [ 
      "Cannot initialize correctly if $GS_HOME is not defined correctly"
      ^ self ])
    ifNotNil: [ :gs_home | (Smalltalk at: #'TDShell') perform: #'devKitRoot:' with: gs_home ].
  (Smalltalk os environment at: 'GS_HOME' ifAbsent: [  ])
    ifNotNil: [ :todeRoot | 
      "support for GsDevKit_home"
      (Smalltalk at: #'TDShell') perform: #'todeRoot:' with: todeRoot ]