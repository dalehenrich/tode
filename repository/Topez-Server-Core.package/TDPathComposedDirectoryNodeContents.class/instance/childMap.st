private
childMap
  | children |
  children := Dictionary new.
  self entryList reversed
    do: [ :entry | entry childrenDo: [ :childNode | children at: childNode name put: childNode ] ].
  ^ children