as yet unclassified
cyp
  <topezCommand: 'cyp' manPage: #'cypManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]
