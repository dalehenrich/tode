project
projectinstall
  "
  project install ( <project-name> | [--local|--stone] --url=<project-entry-url> )
"

  | projectName registration |
  self
    getSubcommandOptsMixedLongShort:
      {#('local' nil #'none').
      #('stone' nil #'none').
      #('url' nil #'required')}.
  subOptions
    at: 'url'
    ifPresent: [ :url | 
      | projectEntryNode projectPath |
      subOptions
        at: 'stone'
        ifPresent: [ :ignored | projectPath := '/sys/stone/projects/' ]
        ifAbsent: [ 
          "--local default"
          projectPath := '/sys/local/server/projects/' ].
      projectEntryNode := self projectProjectEntryFromUrl: url.
      (self topez lookup: projectPath) addChildLeafNode: projectEntryNode.
      projectName := projectEntryNode dotSelfObject projectName ]
    ifAbsent: [ projectName := subArguments at: 1 ].
  registration := self resolveProjectRegistrationReference: projectName.
  ^ registration installProjectUsing: self