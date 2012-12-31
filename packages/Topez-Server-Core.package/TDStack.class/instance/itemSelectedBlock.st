as yet unclassified
itemSelectedBlock
  ^ [ :aTopez :index | 
  self navigateFrame: index.
  currentFrame edit: aTopez windowId: nil.
  nil ]