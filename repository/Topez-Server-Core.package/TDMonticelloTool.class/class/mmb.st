as yet unclassified
mmb
  <topezCommand: 'mmb' manPage: #'mmbManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]