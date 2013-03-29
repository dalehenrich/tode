instance creation
todeConsole: cliShell
  | ttyDisplay |
  ttyDisplay := self new cliShell: cliShell.
  ^ ttyDisplay