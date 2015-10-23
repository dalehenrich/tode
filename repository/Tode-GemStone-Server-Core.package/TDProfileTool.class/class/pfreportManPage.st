pf
pfreportManPage
  | manPage |
  manPage := TDManPage
    commandName: 'report'
    sourceMethod: self name asString , ' class>>pfreportManPage'
    fromString:
      'NAME
  pf report - Generate a string-based report from sampled data

SYNOPSIS
  pf report [--tally=<sample-limit>]

DESCRIPTION
 
EXAMPLES
  pf report
'.
  ^ manPage