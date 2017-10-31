accessing
appEnv
  "Return the value of the instance variable 'appEnv'."

  ^ appEnv ifNil: [ appEnv := TDStandardEnvironment new ]