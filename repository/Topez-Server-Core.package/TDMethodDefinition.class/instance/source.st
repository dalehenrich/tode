as yet unclassified
source
  self username
    ifNotNil: [ 
      ^ (self theBehavior perform: #'persistentMethodAt:' with: self selector)
        sourceString ].
  ^ self theBehavior sourceCodeAt: self selector