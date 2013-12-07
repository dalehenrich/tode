as yet unclassified
ston
  <topezCommand: 'ston' manPage: #'stonManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]