as yet unclassified
port
  <topezCommand: 'port' manPage: #'portManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]