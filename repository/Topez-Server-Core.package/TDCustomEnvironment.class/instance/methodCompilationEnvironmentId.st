accessing
methodCompilationEnvironmentId
  ^ methodCompilationEnvironmentId
    ifNil: [ methodCompilationEnvironmentId := self defaultMethodCompilationEnvironmentId ]