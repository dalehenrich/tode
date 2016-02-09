project api
projectBrowseProjectBaselineFor: registration
  | cls clsName |
  cls := Smalltalk
    at: registration baselineClassName
    ifAbsent: [ 
      registration isHybridBased
        ifTrue: [ 
          | baselineSpec repositorySpec |
          cls := Smalltalk at: registration configurationClassName.
          cls ifNil: [ self projectGetFor: registration ].
          baselineSpec := registration hybridBaselineProjectSpec.
          baselineSpec repositorySpecs do: [ :spec | repositorySpec := spec ].
          Transcript
            cr;
            show:
                'Downloading baseline from: ' , repositorySpec description , '...'.
          self
            projectGet: registration projectName
            className: registration projectSpecClassName
            selector: #'baseline:'
            repositoryDescription: repositorySpec.
          Transcript show: 'done' ]
        ifFalse: [ self projectGetFor: registration ].
      cls := Smalltalk at: registration baselineClassName ].
  (self topez toolInstanceFor: 'browse')
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ cls