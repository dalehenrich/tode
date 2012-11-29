as yet unclassified
references
    <topezCommand: 'references' manPage: #'referencesManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) referencesTo: (tokens at: 2) ]