as yet unclassified
ls
    <topezCommand: 'ls' manPage: #'emptyManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) ls ]