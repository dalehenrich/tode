as yet unclassified
abort
    <topezCommand: 'abort' manPage: #'abortManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) abort ]