actions
applyVersionStringToMetacello: aMetacello
  self isConfigurationBased
    ifTrue: [ aMetacello version: self versionString ]