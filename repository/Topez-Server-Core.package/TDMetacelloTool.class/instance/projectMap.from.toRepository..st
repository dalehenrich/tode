project api
projectMap: registration from: oldRepository toRepository: newRepository
  | workingCopies |
  workingCopies := registration workingCopies.
  workingCopies := workingCopies select: [ :each | each notNil ].
  workingCopies
    do: [ :wc | 
      | rg |
      rg := wc repositoryGroup.
      (rg includes: oldRepository)
        ifTrue: [ 
          rg repositories do: [ :repo | rg removeRepository: repo ].
          rg addRepository: newRepository ] ]