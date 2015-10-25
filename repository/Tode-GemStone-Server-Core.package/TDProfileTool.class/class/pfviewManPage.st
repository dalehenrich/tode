pf
pfviewManPage
  | manPage |
  manPage := TDManPage
    commandName: 'view'
    sourceMethod: self name asString , '>>pfview'
    fromString:
      'NAME
  pf view - Open prof monitor browser

SYNOPSIS
  pf view [--label=<window-label>] [--limit=<tally-limit>] [--sort=tally|total]

DESCRIPTION

OPTIONS

  --label=<window-label>
  --limit=<tally-limit>
  --sort=tally|total
    total is default
 
EXAMPLES
  pf view
  pf view --label=`Test Case 1`
  pf view --label=`Test Case 1` --limit=25 --sort=total
'.
  ^ manPage