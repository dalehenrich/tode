project
projectgetManPage
  | manPage |
  manPage := TDManPage
    commandName: 'get'
    sourceMethod: self name asString , '>>projectget'
    fromString:
      'NAME
  project get - Load the Metacello config for the given project into the image

SYNOPSIS
  project get <project-name>

DESCRIPTION
  Load (reload) the configuration class (ConfigurationOf or BaselineOf) for the given project into the image.

  For a BaselineOf that resides in a github:// repository, the `get` command will cause the local cache of the
  project packages to be refreshed upon the next load.
  
EXAMPLES
  project get Metacello
'.
  ^ manPage