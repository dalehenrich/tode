as yet unclassified
ls
    <topezCommand: 'ls' manPage: #'lsManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) ls ]