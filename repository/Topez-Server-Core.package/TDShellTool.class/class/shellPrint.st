as yet unclassified
shellPrint
  <topezCommand: 'print' manPage: #'shellPrintManPage'>
  ^ [ :topez :objIn :tokens :command | (self topez: topez objIn: objIn todeCommand: command) shellPrint ]