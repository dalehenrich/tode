as yet unclassified
shellInspect
  <topezCommand: 'inspect' manPage: #'shellInspectManPage'>
  ^ [ :topez :objIn :tokens :command | (self topez: topez objIn: objIn todeCommand: command) shellInspect ]