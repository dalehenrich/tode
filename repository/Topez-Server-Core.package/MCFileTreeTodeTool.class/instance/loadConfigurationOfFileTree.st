as yet unclassified
loadConfigurationOfFileTree
  | configNode configRepo gofer message |
  configNode := topez lookup: 'config'.
  configRepo := configNode dotSelfObject.
  [ 
  gofer := Gofer new
    package: 'ConfigurationOfFileTree';
    repository: configRepo;
    load ]
    on: Warning
    do: [ :ex | 
      Transcript
        cr;
        show: 'Skipping fresh load of ConfigurationOfFileTree' ].
  ^ Smalltalk at: #'ConfigurationOfFileTree'