as yet unclassified
nodeBuilderDictionary
  | dict aspectMap |
  dict := Dictionary new.
  aspectMap := Dictionary new.
  aspectMap
    at: #'edit' put: #'TDTxtLeafNodeBuilder';
    at: #'default' put: #'TDNodeBuilder'.
  dict at: #'CharacterCollection' put: aspectMap.
  ^ dict