private
parseMixedLongShortOpts: mixedOptionSpecs
  "mixedOptionSpecs is an array of option specs, for example:

    {#('directory' $d #'required').
      #('class' nil #'none').
      #('package' nil #'none').
      #('category' nil #'required')}

   each subarray consists of the long-option-name, short-option-character, 
     [required|none|optional]
"

  | longOptionsSpec shortOptionAliases |
  longOptionsSpec := Dictionary new.
  shortOptionAliases := Dictionary new.
  mixedOptionSpecs
    do: [ :spec | 
      | optionName shortOptionCharacter optionValueSpec |
      optionName := spec at: 1.
      shortOptionCharacter := spec at: 2.
      optionValueSpec := spec at: 3.
      longOptionsSpec at: optionName put: optionValueSpec.
      shortOptionCharacter
        ifNotNil: [ shortOptionAliases at: shortOptionCharacter put: optionName ] ].
  ^ {longOptionsSpec.
  shortOptionAliases}