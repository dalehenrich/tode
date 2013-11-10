as yet unclassified
debug
  <topezCommand: 'debug' manPage: #'debugManPage'>
  ^ [ :topez :objIn :tokens :command | (self topez: topez objIn: objIn todeCommand: command) debug ]