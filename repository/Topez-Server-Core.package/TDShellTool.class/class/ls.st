as yet unclassified
ls
  <topezCommand: 'ls' manPage: #'lsManPage'>
  ^ [ :topez :objIn :tokens :command | (self topez: topez objIn: objIn todeCommand: command) ls ]