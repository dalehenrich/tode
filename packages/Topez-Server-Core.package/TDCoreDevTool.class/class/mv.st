as yet unclassified
mv
    <topezCommand: 'mv' manPage: #'mvManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) mv ]