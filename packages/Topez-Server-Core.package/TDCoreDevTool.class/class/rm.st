as yet unclassified
rm
    <topezCommand: 'rm' manPage: #'emptyManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) rm ]