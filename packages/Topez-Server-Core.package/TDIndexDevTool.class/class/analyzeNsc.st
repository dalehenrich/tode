as yet unclassified
analyzeNsc
    <topezCommand: 'analyzeNsc' manPage: #'analyzeNscManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    (TDIndexDevTool
        topez: topez
        objIn: objIn
        tokens: tokens
        windowId: windowId) analyzeNsc ]