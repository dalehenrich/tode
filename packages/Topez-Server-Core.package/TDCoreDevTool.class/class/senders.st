as yet unclassified
senders
    <topezCommand: 'senders' manPage: #'sendersManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) sendersOf: (tokens at: 2) ]