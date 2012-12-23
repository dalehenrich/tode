as yet unclassified
dsChildren: node indent: indent level: level on: stream
  | count |
  (node isLeaf or: [ level = 0 ])
    ifTrue: [ ^ self ].
  count := 0.
  node
    childrenDo: [ :child | 
      stream tab: indent.
      count := count + 1.
      (self listLimit > 0 and: [ count > self listLimit ])
        ifTrue: [ 
          stream
            nextPutAll: '...';
            cr.
          ^ self ].
      node
        renderNameText: child name , (node elementExtension: child name)
        textAttributes: (node elementRenderNameTextAttributes: child name)
        on: stream.
      stream nextPutAll: ' -> '.
      child dotSelfObject tzNodeDisplayOn: stream limit: 160 compacted: true.
      stream cr.
      self
        dsChildren: child
        indent: indent + 1
        level: level - 1
        on: stream ]