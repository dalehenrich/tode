as yet unclassified
clientListElementBlock
  ^ [ :listElement | 
  | ar items |
  ar := Array new.
  items := Array new.
  self
    childrenAndNamesDo: [ :child :nameText | 
      | stream |
      stream := TextStream on: Text new.
      stream nextPutAll: nameText.
      stream nextPutAll: ' -> '.
      child dotSelfObject tzNodeDisplayOn: stream limit: 80 compacted: true.
      ar add: stream contents.
      items add: child ].
  listElement itemCache: items.
  STON toString: ar ]