as yet unclassified
mg
  <topezCommand: 'mg' manPage: #'mgManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]