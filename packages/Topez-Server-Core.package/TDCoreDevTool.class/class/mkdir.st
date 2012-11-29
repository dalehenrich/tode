as yet unclassified
mkdir
    <topezCommand: 'mkdir' manPage: #'emptyManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) mkdir ]