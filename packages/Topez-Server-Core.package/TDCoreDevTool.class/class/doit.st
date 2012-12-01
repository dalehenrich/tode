as yet unclassified
doit
    <topezCommand: 'doit' manPage: #'doitManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) doit ]