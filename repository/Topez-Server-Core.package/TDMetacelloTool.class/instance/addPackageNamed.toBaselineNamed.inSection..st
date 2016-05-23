private
addPackageNamed: newPackageName toBaselineNamed: baselineName inSection: sectionSymbol
  (MetacelloToolBox baselineNamed: baselineName)
    modifyBaselineOf;
    modifySection: sectionSymbol asMetacelloAttributePath
      repository: nil
      requiredProjects: #()
      packages: {newPackageName}
      dependencies: #()
      includes: #()
      files: #()
      repositories: #()
      preLoadDoIts: #()
      postLoadDoIts: #()
      supplyingAnswers: #()
      groups: #()
      versionSpecsDo: [ :versionSpec | true ];
    commitBaselineOfMethod