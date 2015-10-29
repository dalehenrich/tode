project
projectinstall
  "
  project install ( <project-name> | [--local] --url=<project-entry-url> )
"

  | projectName registration |
  self
    getSubcommandOptsMixedLongShort:
      {#('local' nil #'none').
      #('url' nil #'required')}.
  subOptions
    at: 'url'
    ifPresent: [ :url | 
      | projectEntryNode projectPath |
      subOptions
        at: 'local'
        ifPresent: [ :ignored | projectPath := '/sys/local/server/projects/' ]
        ifAbsent: [ projectPath := '/sys/stone/projects/' ].
      projectEntryNode := self projectProjectEntryFromUrl: url.
      (self topez lookup: projectPath) addChildLeafNode: projectEntryNode.
      projectName := projectEntryNode name ]
    ifAbsent: [ projectName := subArguments at: 1 ].
  registration := self resolveProjectRegistrationReference: projectName.
  ^ registration installProjectUsing: self