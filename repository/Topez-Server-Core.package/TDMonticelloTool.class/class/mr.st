as yet unclassified
mr
  <topezCommand: 'mr' manPage: #'mrManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]