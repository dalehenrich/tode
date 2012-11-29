as yet unclassified
cd
    <topezCommand: 'cd' manPage: #'cdManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) cd ]