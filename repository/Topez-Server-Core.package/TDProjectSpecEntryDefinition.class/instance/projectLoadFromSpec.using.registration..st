actions
projectLoadFromSpec: projectLoadSpec using: aProjectTool registration: aProjectRegistration
  | loads result |
  self preLoadScript isEmpty
    ifFalse: [ aProjectTool topez evaluateCommandString: self preLoadScript ].
  result := aProjectTool basicProjectLoadFromSpec: projectLoadSpec.
  self postLoadScript isEmpty
    ifFalse: [ aProjectTool topez evaluateCommandString: self postLoadScript ].
  ^ result