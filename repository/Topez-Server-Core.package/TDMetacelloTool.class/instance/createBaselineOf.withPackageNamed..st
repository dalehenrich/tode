private
createBaselineOf: projectName withPackageNamed: packageName
  ^ self
    createBaselineOf: projectName
    requiredProjects: #()
    dependencies: #()
    repositories: #()
    withPackageNamed: packageName