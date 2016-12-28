accessing
classLookupEnvironmentId
  ^ classLookupEnvironmentId
    ifNil: [ classLookupEnvironmentId := self defaultClassLookupEnvironmentId ]