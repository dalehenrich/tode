as yet unclassified
bedit
  <topezCommand: 'bedit' manPage: #'beditManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]