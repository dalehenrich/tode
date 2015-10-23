project
projectrefreshManPage
  "self install"

  | manPage |
  manPage := TDManPage
    commandName: 'refresh'
    sourceMethod: self name asString , ' class>>projectrefreshManPage'
    fromString:
      'NAME
  project refresh - Refresh project entries in project list

SYNOPSIS
  project refresh ( [--locked] [--loaded] ) | ( [--all] )

DESCRIPTION
  With no options, all unlocked and unloaded project entries are unregistered and then
  refreshed from the `/sys/*/projects` directory nodes.

  With the --locked option specified all locked and unloaded project entries are unregistered 
  and then refreshed from the `/sys/*/projects` directory nodes.

  With the --loaded option specified all unlocked and loaded project entries are unregistered 
  and then refreshed from the `/sys/*/projects` directory nodes.

  With the --locked and --loaded options specified all locked and loaded project entries are 
  unregistred and then refreshed from the `/sys/*/projects` directory nodes.

  With the --all option specified all project entries are unregistered and then refreshed
  from the `/sys/*/projects` directory nodes.

EXAMPLES
  project refresh --help
  project refresh
  project refresh --locked
  project refresh --loaded
  project refresh --loaded --locked
  project refresh --all
'.
  ^ manPage