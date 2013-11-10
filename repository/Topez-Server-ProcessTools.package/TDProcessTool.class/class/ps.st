as yet unclassified
ps
  <topezCommand: 'ps' manPage: #'psManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]