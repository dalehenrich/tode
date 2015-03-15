project list
createTemplateProjectEntry: anOldTDRegistrationDefinitionOrNil
  self registration
    baselineProjectSpecIfPresent: [ :baselineProjectSpec | 
      entry := TDProjectSpecEntryDefinition new
        baseline: self projectName
          repository: self repositoryDescription
          loads:
            (self
                templateProjectEntryLoads: anOldTDRegistrationDefinitionOrNil
                projectSpec: baselineProjectSpec);
        yourself ]
    ifAbsent: [ 
      | configurationProjectSpec |
      configurationProjectSpec := self registration configurationProjectSpec.
      entry := TDProjectSpecEntryDefinition new
        configuration: self projectName
          className: configurationProjectSpec className
          version: configurationProjectSpec versionString
          repository: self repositoryDescription
          loads:
            (self
              templateProjectEntryLoads: anOldTDRegistrationDefinitionOrNil
              projectSpec: configurationProjectSpec);
        yourself ].
  ^ entry