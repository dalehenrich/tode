*tode-gemstone-pointerdetective
ppiviewManPage
  | manPage |
  manPage := TDManPage
    commandName: 'view'
    sourceMethod: self name asString , '>>ppiview'
    fromString:
      'NAME
  ppi view - Browse reference paths to given objects

SYNOPSIS
  ppi view [--globalName=<cache-name>]

DESCRIPTION
OPTIONS

EXAMPLES
  ppi view
  ppi view --globalName=PpiRefPathCache 
'.
  ^ manPage