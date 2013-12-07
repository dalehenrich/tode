as yet unclassified
deploy
  <topezCommand: 'deploy' manPage: #'deployManPage'>
  ^ [ :topez :objIn :tokens :command | (MCFileTreeTodeTool topez: topez objIn: objIn todeCommand: command) deploy ]