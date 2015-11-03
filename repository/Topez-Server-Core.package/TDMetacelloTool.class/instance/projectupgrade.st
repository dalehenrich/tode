project
projectupgrade
  "
  project upgrade --install=<project-install-command> [<class-needing-initialization> ...]
"

  | installCommand |
  self getSubcommandOptsMixedLongShort: {#('install' nil #'required')}.
  subOptions
    at: 'install'
    ifPresent: [ :command | installCommand := command ]
    ifAbsent: [ self error: 'Required --install option not specified' ].
  ^ self
    projectUpgradeWithInstallCommand: installCommand
    initializingClassesNamed: subArguments