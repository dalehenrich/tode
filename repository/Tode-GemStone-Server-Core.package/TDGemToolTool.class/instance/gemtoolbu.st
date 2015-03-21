bu
gemtoolbu
  "
  gemtool [--help] bu ( backup | list | restore )
"

  | cmd |
  self getSubcommandOptsMixedLongShort: {}.
  cmd := subArguments at: 1.
  cmd = 'backup'
    ifTrue: [ ^ self gemtoolbuBackup ].
  cmd = 'list'
    ifTrue: [ ^ self gemtoolbuList ].
  cmd = 'restore'
    ifTrue: [ ^ self gemtoolbuRestore ]