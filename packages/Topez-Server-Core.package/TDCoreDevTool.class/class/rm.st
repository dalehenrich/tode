as yet unclassified
rm
    <topezCommand: 'rm' manPage: #'rmManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) rm ]