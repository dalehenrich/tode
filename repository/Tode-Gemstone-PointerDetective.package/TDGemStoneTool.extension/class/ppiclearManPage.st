*tode-gemstone-pointerdetective
ppiclearManPage
  | manPage |
  manPage := TDManPage
    commandName: 'calc'
    sourceMethod: self name asString , '>>ppiclear'
    fromString:
      'NAME
  ppi clear - Clear reference path cache

SYNOPSIS
  ppi clear [--globalName=<cache-name>]

DESCRIPTION

EXAMPLES
  ppi clear
  ppi clear --globalName=PpiRefPathCache 
'.
  ^ manPage