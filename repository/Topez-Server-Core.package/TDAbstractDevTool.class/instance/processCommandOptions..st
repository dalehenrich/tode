command-options
processCommandOptions: optionSpecs
  "optionName, optionCharOrNil, optionSpec (#required, #none, #optional)"

  | longOptionsSpec shortOptionAliases |
  longOptionsSpec := Dictionary new.
  shortOptionAliases := Dictionary new.
  optionSpecs
    do: [ :spec | 
      | optionName shortOptionCharacter optionValueSpec |
      optionName := spec at: 1.
      shortOptionCharacter := spec at: 2.
      optionValueSpec := spec at: 3.
      longOptionsSpec at: optionName put: optionValueSpec.
      shortOptionCharacter
        ifNotNil: [ shortOptionAliases at: shortOptionCharacter put: optionName ] ].
  self getLongOpts: longOptionsSpec short: shortOptionAliases