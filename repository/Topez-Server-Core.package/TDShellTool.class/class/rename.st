as yet unclassified
rename
  <topezCommand: 'rename' manPage: #'renameManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]