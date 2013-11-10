as yet unclassified
mc
  <topezCommand: 'mc' manPage: #'mcManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]