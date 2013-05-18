as yet unclassified
import
  <topezCommand: 'import' manPage: #'importManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  (TDDevProcessSupport
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) import ]