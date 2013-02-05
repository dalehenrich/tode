as yet unclassified
pkgs
  <topezCommand: 'pkgs' manPage: #'pkgsManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) pkgs ]