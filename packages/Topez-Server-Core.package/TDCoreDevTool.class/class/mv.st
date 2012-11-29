as yet unclassified
mv
    <topezCommand: 'mv' manPage: #'emptyManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) mv ]