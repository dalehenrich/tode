as yet unclassified
mcrecompileWorkingCopy: workingCopy
  ^ workingCopy package packageInfo methods
    do: [ :ea | ea actualClass recompile: ea methodSymbol ]