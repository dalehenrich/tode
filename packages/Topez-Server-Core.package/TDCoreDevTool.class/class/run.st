as yet unclassified
run
    <topezCommand: 'run' manPage: #'runManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) run ]