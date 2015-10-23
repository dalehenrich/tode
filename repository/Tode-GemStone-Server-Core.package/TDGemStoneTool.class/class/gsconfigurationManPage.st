gs
gsconfigurationManPage
  | manPage |
  manPage := TDManPage
    commandName: 'configuration'
    sourceMethod: self name asString , ' class>>gsconfigurationManPage'
    fromString:
      'NAME
  gs configuration - Gem and Stone configuration reports

SYNOPSIS
  gs configuration [--gem|--stone]

DESCRIPTION
  Returns a dictionary whose keys are the names of configuration file parameters.

OPTIONS
  --gem
    Returns a dictionary whose keys are the names of configuration file parameters, and whose 
    values are the current settings of those parameters in the current session''s Gem process.

  --stone
    Returns a dictionary whose keys are the names of configuration file parameters, and whose 
    values are the current settings of those parameters in the repository monitor process 
    (Stone). 

EXAMPLES
  gs configuration --gem
  gs configuration --stone
'.
  ^ manPage