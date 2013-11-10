as yet unclassified
db
  <topezCommand: 'db' manPage: #'dbManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]