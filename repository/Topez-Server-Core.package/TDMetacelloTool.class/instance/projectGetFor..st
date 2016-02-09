project api
projectGetFor: registration
  registration isHybridBased
    ifTrue: [ 
      | baselineSpec repositorySpec cls |
      cls := Smalltalk at: registration configurationClassName.
      cls
        ifNil: [ 
          self
            projectGet: registration projectName
            className: registration projectSpecClassName
            selector: registration projectSelector
            repositoryDescription: registration repositoryDescription ].
      baselineSpec := registration hybridBaselineProjectSpec.
      baselineSpec repositorySpecs do: [ :spec | repositorySpec := spec ].
      self
        projectGet: registration projectName
        className: baselineSpec className
        selector: #'baseline:'
        repositoryDescription: repositorySpec ]
    ifFalse: [ 
      self
        projectGet: registration projectName
        className: registration projectSpecClassName
        selector: registration projectSelector
        repositoryDescription: registration repositoryDescription ]