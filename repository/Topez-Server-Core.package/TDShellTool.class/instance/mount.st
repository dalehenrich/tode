as yet unclassified
mount
  "
  mount [-h|--help] <directory-path> <object-path> [<link-name>]
  "

  | directoryPath |
  self getOptsMixedLongShort: {#('help' $h #'none')}.
  self options at: 'help' ifPresent: [ :optionArg | ^ self man: 'mount' ].
  directoryPath := self arguments at: 1.
  ^ self
    mount: directoryPath
    at: (self arguments at: 2)
    as:
      (self arguments at: 3 ifAbsent: [ (directoryPath findTokens: '/') last ])