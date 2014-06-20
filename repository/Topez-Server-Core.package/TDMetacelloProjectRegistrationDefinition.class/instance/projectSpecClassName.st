accessing
projectSpecClassName
  "return a class name only if the class name is explicitly set in projectSpec ...
   i.e., class name cannot be derived from project name"

  self projectSpec hasClassName
    ifTrue: [ ^ self projectSpec className ].
  ^ nil