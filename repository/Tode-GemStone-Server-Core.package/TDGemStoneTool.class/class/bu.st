as yet unclassified
bu
  <topezCommand: 'bu' manPage: #'buManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]