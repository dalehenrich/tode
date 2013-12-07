accessing
renderNameTextAttributes
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode renderNameTextAttributes ]
    ifFalse: [ super renderNameTextAttributes ]