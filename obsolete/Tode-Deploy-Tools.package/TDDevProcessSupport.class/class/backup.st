as yet unclassified
backup
  <topezCommand: 'backup' manPage: #'backupManPage'>
  ^ [ :topez :objIn :tokens :command | (TDDevProcessSupport topez: topez objIn: objIn todeCommand: command) backup ]