as yet unclassified
itemSelectedBlock
  ^ [ :aTopez :index | 
  (self frames at: index) edit: aTopez windowId: nil.
  nil ]