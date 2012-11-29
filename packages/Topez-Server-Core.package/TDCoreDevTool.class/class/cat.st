as yet unclassified
cat
    <topezCommand: 'cat' manPage: #'catManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) cat ]