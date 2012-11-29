as yet unclassified
man
    <topezCommand: 'man' manPage: #'manManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) man ]