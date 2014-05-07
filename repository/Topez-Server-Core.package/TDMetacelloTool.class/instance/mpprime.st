commands
mpprime
  "
  mp prime [--force]
"

  self getSubcommandOptsMixedLongShort: {#('force' nil #'none')}.
  subOptions
    at: 'force'
    ifPresent: [ :ignored | MetacelloProjectRegistration resetRegistry ].
  MetacelloProjectRegistration primeRegistryFromImage