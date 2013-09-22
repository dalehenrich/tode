as yet unclassified
clsaccessors
  <manPage: 'cls' sub: 'accessors' synopsis: '
  cls accessors <class-name> [ instance|class ]
      accessors @<class-path> [ instance|class ]
' description:
    'Create instance variable accessor methods for <class-name>. Default Specify `class` to create class instance variable accessor methods.'>
  | clsName theBehavior comment |
  clsName := tokens at: 2.
  theBehavior := self resolveClassReference: clsName.
  tokens size > 2
    ifTrue: [ 
      (tokens at: 3) = 'class'
        ifTrue: [ theBehavior := theBehavior class ] ].
  ^ self
    clsaccessors: theBehavior
    setters: true
    getters: true
    argName: 'anObject'
    protocol: 'accessing'