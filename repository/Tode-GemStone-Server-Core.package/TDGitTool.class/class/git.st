as yet unclassified
git
  <topezCommand: 'git' manPage: #'gitManPage'>
  ^ [ :topez :objIn :tokens :command | self performSubCommand: topez objIn: objIn todeCommand: command ]