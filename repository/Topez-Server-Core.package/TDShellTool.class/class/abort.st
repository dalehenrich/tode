as yet unclassified
abort
  <topezCommand: 'abort' manPage: #'abortManPage'>
  ^ [ :topez :objIn :tokens :command | (self topez: topez objIn: objIn todeCommand: command) abort ]