as yet unclassified
pwd
    <topezCommand: 'pwd' manPage: #'emptyManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) pwd ]