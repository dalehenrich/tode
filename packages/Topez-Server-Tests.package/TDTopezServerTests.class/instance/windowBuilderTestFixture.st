as yet unclassified
windowBuilderTestFixture
  "object aspect windowId expected"

  ^ {{(self directoryNodeStructure).
  #'edit'.
  nil.
  '/ ([Array] anArray( ''. -> [TDDirectoryNode] /'', ''a/ -> [TDDirectoryNode] /a/'', ''b/ -> [TDDirectoryNode] /b/'', ''c/ -> [TDDirectoryNode] /c/'')):
	1@ -> [String] ''. -> [TDDirectoryNode] /''
	2@ -> [String] ''a/ -> [TDDirectoryNode] /a/''
	3@ -> [String] ''b/ -> [TDDirectoryNode] /b/''
	4@ -> [String] ''c/ -> [TDDirectoryNode] /c/''
'}}