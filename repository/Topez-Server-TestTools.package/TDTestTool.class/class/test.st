as yet unclassified
test
  <topezCommand: 'test' manPage: #'testManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]