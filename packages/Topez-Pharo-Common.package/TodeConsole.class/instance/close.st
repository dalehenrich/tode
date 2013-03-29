initialize-release
close
  super close.
  self cliShell windowIsClosing.
  self changed: #'exit'