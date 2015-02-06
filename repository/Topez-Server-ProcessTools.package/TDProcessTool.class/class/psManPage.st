as yet unclassified
psManPage
  | manPage |
  manPage := TDManPage
    commandName: 'ps'
    fromString:
      'NAME
  ps - execute process commands

SYNOPSIS
  ps delay <seconds>
  ps list 
  ps portable 
  ps yield

DESCRIPTION
'.
  manPage subCommands
    at: 'list' put: self pslistManPage;
    yourself.
  ^ manPage