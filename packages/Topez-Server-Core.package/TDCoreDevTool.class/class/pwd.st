as yet unclassified
pwd
    <topezCommand: 'pwd' manPage: #'pwdManPage'>
    ^ [ :topez :tokens :windowId | (TDCoreDevTool topez: topez tokens: tokens windowId: windowId) pwd ]