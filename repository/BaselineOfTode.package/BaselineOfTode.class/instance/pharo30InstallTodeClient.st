initialization
pharo30InstallTodeClient
  "setup paths"

  Deprecation
    perform: #'showWarning:' with: false;
    perform: #'raiseWarning:' with: false.
  (Smalltalk os environment
    at: 'GS_HOME'
    ifAbsent: [ 
      "Cannot initialize correctly if $GS_HOME is not defined correctly"
      ^ self ])
    ifNotNil: [ :gs_home | (Smalltalk at: #'TDShell') perform: #'devKitRoot:' with: gs_home ].
  (Smalltalk os environment at: 'GS_SHARED_TODE' ifAbsent: [  ])
    ifNotNil: [ :gs_tode_client_path | 
      "support for GsDevKit_home"
      (Smalltalk at: #'TDShell')
        perform: #'todeClientRoot:'
        with: gs_tode_client_path ]