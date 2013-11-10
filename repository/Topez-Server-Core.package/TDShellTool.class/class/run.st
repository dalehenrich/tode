as yet unclassified
run
  <topezCommand: 'run' manPage: #'runManPage'>
  ^ [ :topez :objIn :tokens :command | (self topez: topez objIn: objIn todeCommand: command) run ]