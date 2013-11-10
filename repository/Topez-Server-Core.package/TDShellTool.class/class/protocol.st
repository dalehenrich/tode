as yet unclassified
protocol
  <topezCommand: 'protocol' manPage: #'protocolManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]