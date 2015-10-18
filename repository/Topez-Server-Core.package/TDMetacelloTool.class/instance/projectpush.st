project
projectpush
  "
  project push [--remote=<git-remote-name>] ( <project-name> | @<project-reference> )
"

  | remote projectName registration |
  self getSubcommandOptsMixedLongShort: {#('remote' nil #'required')}.
  projectName := subArguments at: 1.
  registration := self resolveProjectRegistrationReference: projectName.
  options
    at: 'remote'
    ifPresent: [ :remoteName | remote := remoteName ]
    ifAbsent: [ remote := 'origin' ].
  ^ self projectPush: registration remoteName: remote