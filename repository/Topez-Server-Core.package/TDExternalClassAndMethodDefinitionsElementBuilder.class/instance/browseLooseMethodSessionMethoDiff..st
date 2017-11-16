menu actions
browseLooseMethodSessionMethoDiff: listElement
  | diffs |
  diffs := {}.
  (self looseMethodDefinitions: listElement)
    do: [ :def | 
      | baseSource defSource diff selectionAttribute |
      baseSource := ''.
      selectionAttribute := #'bold'.
      def theBehavior
        ifNotNil: [ :beh | 
          | cls |
          cls := beh theNonMetaClass.
          ((def symbolList dictionariesAndSymbolsOf: cls)
            detect: [ :ar | (ar at: 1) == Globals ]
            ifNone: [  ])
            ifNotNil: [ 
              | persistentMethodDict |
              persistentMethodDict := beh persistentMethodDictForEnv: 0.
              (persistentMethodDict at: def selector ifAbsent: [  ])
                ifNotNil: [ :meth | baseSource := meth sourceString ] ] ].
      defSource := def source.
      baseSource isEmpty
        ifTrue: [ selectionAttribute := #'normal' ].
      diff := TDSimpleDiff new
        label: def className asString , '>>' , def selector;
        source: baseSource;
        destination: defSource;
        selectionAttribute: selectionAttribute;
        yourself.
      diff isSameSource
        ifTrue: [ diff selectionAttribute: #'underlined' ].
      diffs add: diff ].
  (TDGitDiffBrowser new
    operations: diffs;
    topez: listElement topez;
    windowLabel: 'Loose session method diffs';
    yourself) open