as yet unclassified
rm
    <topezCommand: 'rm' manPage: #'rmManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDCoreDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) rm ]