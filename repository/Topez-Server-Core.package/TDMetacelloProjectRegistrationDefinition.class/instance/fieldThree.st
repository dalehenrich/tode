project list
fieldThree
  self isConfigProjectValid
    ifFalse: [ ^ 'check the configuration or baseline of this project for correctness' ].
  ^ self repositoryDescription