styling
shoutClassOrMetaClass
  shoutClassOrMetaClass
    ifNil: [ 
      shoutClassOrMetaClass := Array with: nil with: false.
      self edittingCode
        ifFalse: [ 
          self stylingActive
            ifTrue: [ 
              shoutClassOrMetaClass
                at: 1 put: nil;
                at: 2 put: true ].
          ^ shoutClassOrMetaClass ].
      self sourceElement className asString = 'TZProxyGemStone'
        ifTrue: [ 
          (#('TZExecutedCodeElement' 'TZTextElement') includes: self sourceElement proxyClassName)
            ifTrue: [ 
              shoutClassOrMetaClass
                at: 1 put: nil;
                at: 2 put: true.
              ^ shoutClassOrMetaClass ].
          self activeShout
            ifTrue: [ 
              self sourceElement proxyClassName = 'TZClassElement'
                ifTrue: [ 
                  shoutClassOrMetaClass
                    at: 1 put: self sourceElement asBehavior;
                    at: 2 put: true.
                  ^ shoutClassOrMetaClass ]
                ifFalse: [ 
                  (#('TZMethodElement' 'TZFrameMethodElement' 'TZExecutedCodeElement' 'TZMessageElement' 'TZTemplateMethodElement')
                    includes: self sourceElement proxyClassName)
                    ifTrue: [ 
                      shoutClassOrMetaClass at: 2 put: true.
                      self sourceElement isMeta asTopezNative
                        ifTrue: [ shoutClassOrMetaClass at: 1 put: self sourceElement asClassBehavior ]
                        ifFalse: [ shoutClassOrMetaClass at: 1 put: self sourceElement asBehavior ].
                      ^ shoutClassOrMetaClass ] ] ].
          shoutClassOrMetaClass at: 2 put: true.
          self sourceElement proxyClassName asString = 'TZDoItElement'
            ifTrue: [ shoutClassOrMetaClass at: 1 put: nil ]
            ifFalse: [ shoutClassOrMetaClass at: 1 put: Object ].
          ^ shoutClassOrMetaClass ].
      self sourceElement
        ifNotNil: [ 
          shoutClassOrMetaClass at: 2 put: true.
          self activeShout
            ifTrue: [ shoutClassOrMetaClass at: 1 put: self sourceElement elementBehaviorForShout ]
            ifFalse: [ 
              self sourceElement className asString = 'TZDoItElement'
                ifTrue: [ shoutClassOrMetaClass at: 1 put: nil ]
                ifFalse: [ shoutClassOrMetaClass at: 1 put: Object ] ] ]
        ifNil: [ shoutClassOrMetaClass at: 2 put: self stylingActive ] ].
  ^ shoutClassOrMetaClass