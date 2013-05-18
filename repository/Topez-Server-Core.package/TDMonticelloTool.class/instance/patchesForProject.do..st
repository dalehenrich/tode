as yet unclassified
patchesForProject: projectSpec do: aBlock
  | dirty |
  dirty := self modifiedPackagesForProjectSpec: projectSpec.
  dirty
    do: [ :packageSpec | 
      | wc patch |
      wc := packageSpec workingCopy.
      patch := self patchForWorkingCopy: wc.
      aBlock value: wc value: patch ]