*tode-gemstone-core35x
performOnServer: commandLine status: statusBlock
  ""

  | performOnServerStatusArray |
  performOnServerStatusArray := System
    _performOnServer: commandLine
    withShell: nil.
  ^ statusBlock value: performOnServerStatusArray