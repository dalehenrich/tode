as yet unclassified
history
  <topezCommand: 'history' manPage: #'historyManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]