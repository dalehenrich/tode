as yet unclassified
deploy
  <topezCommand: 'deploy' manPage: #'deployManPage'>
  ^ [ :topez :objIn :tokens :command | (MCMetacelloTodeTool topez: topez objIn: objIn todeCommand: command) deploy ]