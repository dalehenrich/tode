as yet unclassified
cd
    <topezCommand: 'cd' manPage: #'emptyManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) cd ]