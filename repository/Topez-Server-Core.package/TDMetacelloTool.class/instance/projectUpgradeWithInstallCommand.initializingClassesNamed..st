project api
projectUpgradeWithInstallCommand: installCommand initializingClassesNamed: classesNeedingInitialization
  self
    projectUpgrade: [ self topez evaluateCommandString: installCommand ]
    initializingClassesNamed: classesNeedingInitialization