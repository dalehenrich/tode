as yet unclassified
loadConfigurationOfFileTree
  | configRepo gofer message |
  configRepo := self configRepo.
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