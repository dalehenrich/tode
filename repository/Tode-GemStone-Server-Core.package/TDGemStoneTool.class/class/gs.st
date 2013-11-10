as yet unclassified
gs
  <topezCommand: 'gs' manPage: #'gsManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]