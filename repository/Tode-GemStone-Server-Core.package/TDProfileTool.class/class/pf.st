as yet unclassified
pf
  <topezCommand: 'pf' manPage: #'pfManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]