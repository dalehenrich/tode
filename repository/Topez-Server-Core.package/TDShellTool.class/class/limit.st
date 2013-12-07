as yet unclassified
limit
  <topezCommand: 'limit' manPage: #'limitManPage'>
  ^ [ :topez :objIn :tokens :command | (self topez: topez objIn: objIn todeCommand: command) limit ]