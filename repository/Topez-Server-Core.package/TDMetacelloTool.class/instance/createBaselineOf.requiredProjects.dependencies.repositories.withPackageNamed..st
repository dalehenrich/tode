private
createBaselineOf: projectName requiredProjects: requiredProjects dependencies: dependencies repositories: repositories withPackageNamed: packageName
  | toolBox |
  (toolBox := MetacelloToolBox baselineNamed: projectName)
    createBaselineOfMethod: 'baseline:' inCategory: 'baseline';
    addBaselineOfSection: #'common'
      requiredProjects: requiredProjects
      packages: {packageName}
      repositories: repositories
      dependencies: dependencies
      groups: #()
      versionSpecsDo: [ :versionSpec |  ];
    commitBaselineOfMethod.
  ^ toolBox project configuration class