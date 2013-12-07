as yet unclassified
cls
  <topezCommand: 'cls' manPage: #'clsManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]