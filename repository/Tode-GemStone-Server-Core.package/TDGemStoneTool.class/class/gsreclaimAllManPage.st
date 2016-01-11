gs
gsreclaimAllManPage
  | manPage |
  manPage := TDManPage
    commandName: 'reclaimAll'
    sourceMethod: self name asString , '>>gsreclaimAll'
    fromString:
      'NAME
  gs reclaimAll - Initiate Repository>>reclaimAll

SYNOPSIS
  gs reclaimAll 
         
DESCRIPTION

OPTIONS
EXAMPLES
  gs reclaimAll
'.
  ^ manPage