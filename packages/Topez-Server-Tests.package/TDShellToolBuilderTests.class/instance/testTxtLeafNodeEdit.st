as yet unclassified
testTxtLeafNodeEdit
  "Text/String clientElements store contents as STON version of String or Text"

  self
    executeWindowBuilderSpecs:
      {{(self directoryNodeStructure childNamed: 'd' ifAbsent: [  ]).
      #'edit'.
      nil.
      '/:
[String] ''Text{#string:''''This is a string'''',#runs:RunArray{#runs:[16],#values:[[TextEmphasis{#emphasisCode:0,#setMode:true},TextEmphasis{#emphasisCode:1,#setMode:true}]]...'}.
      {(self directoryNodeStructure childNamed: 'e' ifAbsent: [  ]).
      #'edit'.
      nil.
      '/:
[String] ''''''This is a string'''''''}}