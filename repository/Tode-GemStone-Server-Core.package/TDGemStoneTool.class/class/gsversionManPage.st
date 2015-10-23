gs
gsversionManPage
  | manPage |
  manPage := TDManPage
    commandName: 'version'
    sourceMethod: self name asString , '>>gsversion'
    fromString:
      'NAME
  gs version - OS, hardware and GemStone version attributes for Client, Gem, or Stone

SYNOPSIS
  gs version [--client|--gem|--stone]

DESCRIPTION
  Return a StringKeyValueDictionary whose keys are the names of operating system,
  hardware, or GemStone version attributes, and whose values are the current values 
  of those attributes for the current client, gem, or stone.

OPTIONS
  --client
    Return attribute dictionary for client GemBuilder for C process.

  --gem
    Return attribute dictionary for Gem process.

  --stone
    Return attribute dictionary for Stone process.

EXAMPLES
  gs version
  gs version --client
  gs version --gem
  gs version --stone
'.
  ^ manPage