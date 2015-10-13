dictionary compat
values
  | children |
  children := OrderedCollection new.
  self node childrenDo: [ :childNode | children add: childNode ].
  ^ children