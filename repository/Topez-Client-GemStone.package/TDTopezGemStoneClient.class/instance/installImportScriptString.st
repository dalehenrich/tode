as yet unclassified
installImportScriptString
^'| stonTool topez |
topez := TDTopezServer for: 0.
stonTool := topez toolInstanceFor: ''ston''.
stonTool stonImportFrom: ''/opt/git/tode/ston/home/bin/import'' to: (topez lookup: ''/home'').
System commit.
'