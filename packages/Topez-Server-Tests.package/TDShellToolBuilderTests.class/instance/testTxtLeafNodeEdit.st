as yet unclassified
testTxtLeafNodeEdit
  self
    executeWindowBuilderSpecs:
      {{(self directoryNodeStructure childNamed: 'd' ifAbsent: [  ]).
      #'edit'.
      nil.
      '/:
[String] ''This is a string'''}}