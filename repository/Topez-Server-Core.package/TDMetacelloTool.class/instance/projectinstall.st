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
      | projectEntry projectPath |
      subOptions
        at: 'stone'
        ifPresent: [ :ignored | projectPath := TDProjectEntryDefinition sys_stone_projects ]
        ifAbsent: [ 
          "--local default"
          projectPath := TDProjectEntryDefinition sys_local_server_projects ].
      projectEntry := self projectEntryObjectFromUrl: url nodePath: projectPath.
      projectName := projectEntry projectName ]
    ifAbsent: [ projectName := subArguments at: 1 ].
  registration := self resolveProjectRegistrationReference: projectName.
  ^ registration installProjectUsing: self