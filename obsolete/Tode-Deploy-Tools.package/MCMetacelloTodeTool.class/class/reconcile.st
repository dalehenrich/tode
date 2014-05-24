as yet unclassified
reconcile
  <topezCommand: 'reconcile' manPage: #'reconcileManPage'>
  ^ [ :topez :objIn :tokens :command | (MCMetacelloTodeTool topez: topez objIn: objIn todeCommand: command) reconcile ]