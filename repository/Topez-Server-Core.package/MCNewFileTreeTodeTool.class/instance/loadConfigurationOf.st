as yet unclassified
loadConfigurationOf
  | configurationName gofer message |
  configurationName := 'ConfigurationOf' , self projectName.
  [ 
  gofer := Gofer new
    package: configurationName;
    repository: self configRepo;
    load ]
    on: Warning
    do: [ :ex | 
      Transcript
        cr;
        show: 'Skipping fresh load of ' , configurationName ].
  ^ Smalltalk at: configurationName asSymbol