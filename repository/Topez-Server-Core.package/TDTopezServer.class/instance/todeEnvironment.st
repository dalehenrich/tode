environment
todeEnvironment
  ^ todeEnvironment ifNil: [ todeEnvironment := TDStandardEnvironment new ]