private
createBaselineOf: projectName withPackageNamed: packageName
  | toolBox |
  (toolBox := MetacelloToolBox baselineNamed: projectName)
    createBaselineOfMethod: 'baseline:' inCategory: 'baseline';
    addBaselineOfSection: #'common'
      requiredProjects: #()
      packages: {packageName}
      repositories: #()
      dependencies: #()
      groups: #()
      versionSpecsDo: [ :versionSpec |  ];
    commitBaselineOfMethod.
  ^ toolBox project configuration class