as yet unclassified
find
  <topezCommand: 'find' manPage: #'findManPage'>
  ^ [ :topez :objIn :tokens :command | (self topez: topez objIn: objIn todeCommand: command) find ]