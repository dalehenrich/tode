menu actions
browseLooseMethodImageDiff: listElement
  | diffs |
  diffs := {}.
  (self looseMethodDefinitions: listElement)
    do: [ :def | 
      | imageSource defSource diff selectionAttribute |
      imageSource := ''.
      selectionAttribute := #'bold'.
      def theBehavior
        ifNotNil: [ :beh | 
          (beh compiledMethodAt: def selector environmentId: 0 otherwise: nil)
            ifNotNil: [ :meth | imageSource := meth sourceString ] ].
      defSource := def source.
      imageSource isEmpty
        ifTrue: [ selectionAttribute := #'normal' ].
      diff := TDSimpleDiff new
        label: def className asString , '>>' , def selector;
        source: imageSource;
        destination: defSource;
        selectionAttribute: selectionAttribute;
        yourself.
      diff isSameSource
        ifTrue: [ diff selectionAttribute: #'underlined' ].
      diffs add: diff ].
  (TDGitDiffBrowser new
    operations: diffs;
    topez: listElement topez;
    windowLabel: 'Loose method image diffs';
    yourself) open