as yet unclassified
touch
    <topezCommand: 'touch' manPage: #'touchManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) touch ]