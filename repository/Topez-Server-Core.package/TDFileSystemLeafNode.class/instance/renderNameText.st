accessing
renderNameText
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode renderNameText ]
    ifFalse: [ super renderNameText ]