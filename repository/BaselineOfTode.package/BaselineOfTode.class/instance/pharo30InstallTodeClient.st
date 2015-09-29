initialization
pharo30InstallTodeClient
  "setup paths"

  Deprecation
    showWarning: false;
    raiseWarning: false.
  (Smalltalk os environment at: 'GS_HOME' ifAbsent: [  ])
    ifNotNil: [ :gs_home | (Smalltalk at: #'TDShell') perform: #'devKitRoot:' with: gs_home ].
  (Smalltalk os environment at: 'GS_SHARED_TODE' ifAbsent: [  ])
    ifNotNil: [ :gs_tode_client_path | 
      "support for GsDevKit_home"
      (Smalltalk at: #'TDShell')
        perform: #'todeClientRoot:'
        with: gs_tode_client_path ]