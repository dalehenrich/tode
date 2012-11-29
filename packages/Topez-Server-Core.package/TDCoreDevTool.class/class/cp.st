as yet unclassified
cp
    <topezCommand: 'cp' manPage: #'cpManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) cp ]