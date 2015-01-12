project
projectrehome
  "
  project rehome [--repo=<repository-description>] 
                 [--no-config] <project-name>
"

  | projectName registration description newRepo skipConfig |
  self
    getSubcommandOptsMixedLongShort:
      {#('repo' nil #'required' #'.' 'no-config' nil #'none')}.
  projectName := subArguments at: 1.
  registration := self projectRegistrationFor: projectName.
  subOptions
    at: 'repo'
    ifPresent: [ :arg | description := arg ]
    ifAbsent: [ description := registration repositoryDescription ].
  subOptions
    at: 'no-config'
    ifPresent: [ :ignored | skipConfig := true ]
    ifAbsent: [ skipConfig := false ].
  newRepo := self repositoryFromDescription: description.
  ^ registration workingCopies
    do: [ :wc | 
      | rg |
      (skipConfig and: [ wc packageName beginsWith: 'ConfigurationOf' ])
        ifFalse: [ 
          rg := wc repositoryGroup.
          rg repositories do: [ :repo | rg removeRepository: repo ].
          rg addRepository: newRepo ] ]