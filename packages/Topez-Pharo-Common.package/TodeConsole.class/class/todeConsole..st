instance creation
todeConsole: cliShell
  | ttyDisplay |
  ttyDisplay := self new cliShell: cliShell.
  cliShell
    outputStream: ttyDisplay;
    errorStream: ttyDisplay.
  ^ ttyDisplay