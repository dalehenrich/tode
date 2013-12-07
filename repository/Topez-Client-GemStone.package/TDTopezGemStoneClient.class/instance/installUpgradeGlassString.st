as yet unclassified
installUpgradeGlassString
^'Smalltalk
  at: #''BaselineOfGLASS1''
  ifPresent: [ :ignored | 
    Smalltalk at: #''MetacelloProjectRegistration''
      ifPresent: [ :cls | 
        (cls registrationForClassNamed: ''BaselineOfGLASS1'' ifAbsent: [  ])
          ifNotNil: [ :registration | 
            registration loadedInImage
              ifTrue: [ ^ nil ] ] ] ].
Transcript cr; show: ''-----Upgrading GLASS to 1.0-beta.9.1''.
ConfigurationOfGLASS project updateProject.
GsDeployer
  deploy: [ (ConfigurationOfGLASS project version: ''1.0-beta.9.1'') load ].
System commit
'