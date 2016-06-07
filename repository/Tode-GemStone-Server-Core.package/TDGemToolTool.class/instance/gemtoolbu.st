bu
gemtoolbu
  "
  gemtool [--help] bu ( backup | list | restore | validate )
"

  | cmd |
  self getSubcommandOptsMixedLongShort: {}.
  subArguments isEmpty
    ifTrue: [ 
      self
        error:
          'Missing required argument `( backup | list | restore )`. See `man gemtool bu` for details.' ].
  cmd := subArguments at: 1.
  cmd = 'backup'
    ifTrue: [ ^ self gemtoolbuBackup ].
  cmd = 'list'
    ifTrue: [ ^ self gemtoolbuList ].
  cmd = 'restore'
    ifTrue: [ ^ self gemtoolbuRestore ].
  cmd = 'validate'
    ifTrue: [ ^ self gemtoolbuValidate ]