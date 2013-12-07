as yet unclassified
rm
  <topezCommand: 'rm' manPage: #'rmManPage'>
  ^ [ :topez :objIn :tokens :command | (self topez: topez objIn: objIn todeCommand: command) rm ]