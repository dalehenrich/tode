as yet unclassified
mkdir
    <topezCommand: 'mkdir' manPage: #'mkdirManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) mkdir ]