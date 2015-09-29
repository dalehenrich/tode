accessing
gsDeployerOption
  "#bulk, #auto, #none"

  gsDeployerOption ifNil: [ gsDeployerOption := #'bulk' ].
  ^ gsDeployerOption