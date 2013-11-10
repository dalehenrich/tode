as yet unclassified
mm
  <topezCommand: 'mm' manPage: #'mmManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]