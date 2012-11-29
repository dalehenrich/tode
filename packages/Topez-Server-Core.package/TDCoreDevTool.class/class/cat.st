as yet unclassified
cat
    <topezCommand: 'cat' manPage: #'emptyManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) cat ]