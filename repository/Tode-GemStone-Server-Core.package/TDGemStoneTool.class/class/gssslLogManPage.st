gs
gssslLogManPage
  | manPage |
  manPage := TDManPage
    commandName: 'sslLog'
    sourceMethod: self name asString , '>>gssslLog'
    fromString:
      'NAME
  gs sslLog - Inspect GsSecureSocket SSL log

SYNOPSIS
  gs sslLog

DESCRIPTION
  Inspect the GsSecureSocket SSL log.

EXAMPLES
  gs sslLog
 '.
  ^ manPage