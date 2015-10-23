private
createBaseline: projectName withPackageNamed: packageName
  | toolbox |
  toolbox := MetacelloToolBox baselineNamed: projectName.
  toolbox createBaselineMethod: 'baseline:' inCategory: 'baseline'