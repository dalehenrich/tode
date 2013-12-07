private
resolveAliasFor: optionCharacter optionSpecs: optionSpecs shortOptions: shortOptionAliases do: aBlock
  | alias spec |
  alias := shortOptionAliases
    at: optionCharacter
    ifAbsent: [ ^ self error: 'Unknown option: ' , optionCharacter asString ].
  spec := optionSpecs
    at: alias
    ifAbsent: [ ^ self error: 'Unknown option: ' , alias ].
  aBlock value: alias value: spec