accessing
workingCopies
  | configWorkingCopy workingCopies |
  configWorkingCopy := self projectSpec projectPackage workingCopy.
  configWorkingCopy ifNil: [ ^ #() ].
  self isLoadedInImage
    ifTrue: [ 
      | version |
      version := self registration projectVersion.
      version
        ifNil: [ 
          "project has been unloaded from image"
          ^ #() ].
      configWorkingCopy modified
        ifTrue: [ 
          | configProject "use the projectSpec from the config, if the config has been modified" |
          configProject := self projectSpec projectClassProject.
          version := configProject version: version versionString ].
      workingCopies := version packages collect: [ :pkg | pkg workingCopy ] ]
    ifFalse: [ workingCopies := {} ].
  workingCopies add: configWorkingCopy.
  self hybridBaselineProjectSpec
    ifNotNil: [ :baselineProjectSpec | workingCopies add: baselineProjectSpec projectPackage workingCopy ].
  ^ workingCopies reject: [ :each | each isNil ]