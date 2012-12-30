as yet unclassified
itemSelectedBlock
  ^ [ :aTopez :index | 
  (index > 0 and: [ index <= self frames size ])
    ifTrue: [ (self frames at: index) edit: aTopez windowId: nil ].
  nil ]