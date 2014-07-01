menu actions
editProjectBaselineMenuAction: listElement selectionIndex: selectionIndex
  | registration cls ans |
  selectionIndex = 0
    ifTrue: [ ^ false ].
  registration := self projects at: selectionIndex.
  cls := Smalltalk at: registration baselineClassName.
  ans := true.
  cls
    ifNil: [ 
      registration isHybridBased
        ifTrue: [ 
          | baselineSpec repositorySpec |
          cls := Smalltalk at: registration configurationClassName.
          cls
            ifNil: [ self getProjectMenuAction: listElement selectionIndex: selectionIndex ].
          baselineSpec := registration baselineProjectSpec.
          baselineSpec repositorySpecs do: [ :spec | repositorySpec := spec ].
          Transcript
            cr;
            show:
                'Downloading baseline from: ' , repositorySpec description , '...'.
          projectTool
            projectGet: registration projectName
            className: registration projectSpecClassName
            selector: #'baseline:'
            repositoryDescription: repositorySpec.
          Transcript show: 'done' ]
        ifFalse: [ self getProjectMenuAction: listElement selectionIndex: selectionIndex ].
      ans := #'refreshView'.
      cls := Smalltalk at: registration baselineClassName ].
  self browseTool
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ ans