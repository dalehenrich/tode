as yet unclassified
commandName: commandName fromString: manPageString commandPath: commandPath sourceMethod: sourceMethod
  "see http://pubs.opengroup.org/onlinepubs/009695399/basedefs/xbd_chap12.html for tips on documenting command syntax"

  ^ (self
    fromString: manPageString
    commandPath: commandPath
    sourceMethod: sourceMethod)
    commandName: commandName;
    yourself