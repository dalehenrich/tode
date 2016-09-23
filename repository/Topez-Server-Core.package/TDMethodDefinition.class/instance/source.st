as yet unclassified
source
  self username
    ifNotNil: [ ^ (self theBehavior persistentMethodAt: self selector) sourceString ].
  ^ self theBehavior sourceCodeAt: self selector