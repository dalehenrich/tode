dictionary compat
keys
  | childNames |
  childNames := OrderedCollection new.
  self node childrenDo: [ :childNode | childNames add: childNode name ].
  ^ childNames