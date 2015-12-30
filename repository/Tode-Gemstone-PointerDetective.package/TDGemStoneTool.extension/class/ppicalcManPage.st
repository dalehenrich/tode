*tode-gemstone-pointerdetective
ppicalcManPage
  | manPage |
  manPage := TDManPage
    commandName: 'calc'
    sourceMethod: self name asString , '>>ppicalc'
    fromString:
      'NAME
  ppi calc - Calculate reference paths to given object

SYNOPSIS
  ppi calc [--maxPaths=<max-paths>] [--globalName=<cache-name>] \
           [ --st=<st-expression> | oop... ]

DESCRIPTION
OPTIONS

EXAMPLES
  ppi -h

  ppi calc --maxPaths=3 --st=`{(MetacelloProjectRegistration registry registrations at: 1) projectSpec}`

  ppi calc 452261889
  ppi calc --maxPaths=3 452261889
  ppi calc --maxPaths=3 --globalName=PpiRefPathCache 452261889
'.
  ^ manPage