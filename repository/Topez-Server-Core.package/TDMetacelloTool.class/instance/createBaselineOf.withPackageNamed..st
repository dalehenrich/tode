private
createBaselineOf: projectName withPackageNamed: packageName
  | toolBox |
  (toolBox := MetacelloToolBox baselineNamed: projectName)
    createBaselineOf: projectName
    requiredProjects: #()
    packages: {packageName}
    repositories: #()
    dependencies: #()
    groups: #().
  ^ toolBox project configuration class