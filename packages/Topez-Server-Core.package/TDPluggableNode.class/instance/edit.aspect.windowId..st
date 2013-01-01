as yet unclassified
edit: aTopez aspect: anAspect windowId: windowId
  editBlock ifNil: [ ^ super edit: aTopez aspect: anAspect windowId: windowId ].
  ^ self editBlock value: self value: anAspect value: windowId