accessing
getSelection
self clientElement ifNil: [^1 to: 0].
  ^ self clientElement getSelectedSourceInterval