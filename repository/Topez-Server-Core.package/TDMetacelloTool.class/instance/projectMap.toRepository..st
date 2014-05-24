project api
projectMap: registration toRepository: newRepository
  | workingCopies |
  workingCopies := registration workingCopies.
  workingCopies := workingCopies select: [ :each | each notNil ].
  workingCopies
    do: [ :wc | 
      | rg |
      rg := wc repositoryGroup.
      rg repositories do: [ :repo | rg removeRepository: repo ].
      rg addRepository: newRepository ]