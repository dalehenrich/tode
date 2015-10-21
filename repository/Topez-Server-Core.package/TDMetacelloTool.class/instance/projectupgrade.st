project
projectupgrade
  "
  project upgrade --install=<project-install-command> [<class-needing-initialization> ...]
"

  | installCommand |
  self getSubcommandOptsMixedLongShort: {#('script' nil #'required')}.
  subOptions
    at: 'command'
    ifPresent: [ :command | installCommand := command ]
    ifAbsent: [ self error: 'Required --command option not specified' ].
  ^ self
    projectUpgradeWithInstallCommand: installCommand
    initializingClassesNamed: subArguments