as yet unclassified
testClassHistoryRemoval
  | history newClassVersion oldClassVersion clsTool cls clsVersion orphaned versionHistory |
  clsTool := self tool.
  cls := self mockClass.
  history := clsTool clshistory: cls.
  self assert: history size == 1.
  clsVersion := self createMockClassVersion.
  history := clsTool clshistory: cls.
  self assert: history size == 2.
  clsTool clsRemoveClassFromClassHistory: clsVersion.
  history := clsTool clshistory: cls.
  self assert: history size == 1.
  clsTool clsRemoveClassFromClassHistory: cls.
  self assert: (Smalltalk at: self mockClassName) == nil.
  (cls respondsTo: #'removeFromClassHistory')
    ifFalse: [ 
      "doesn't have bugfix for opportunistic test for https://github.com/GsDevKit/GsDevKit/issues/74"
      ^ self ].
  orphaned := false.
  versionHistory := MethodVersionHistory uniqueInstance dictionary.
  {cls.
  clsVersion}
    do: [ :cls | 
      (cls classHistory includes: cls)
        ifFalse: [ 
          orphaned := true.
          versionHistory
            at: cls
            ifPresent: [ :ignored | 
              self
                assert: false
                description:
                  'Version history should be cleaned by clsRemoveClassFromClassHistory:' ].
          versionHistory
            at: cls class
            ifPresent: [ :ignored | 
              self
                assert: false
                description:
                  'Version history should be cleaned up during clsRemoveClassFromClassHistory:' ] ] ].
  self assert: orphaned description: 'Expecting at least 1 class to be orphaned'