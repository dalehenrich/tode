as yet unclassified
initialize
  self install.
  TDTopezServer
    registerBuilderClass: TDRcIndexDictionaryNodeBuilder
      for: RcIndexDictionary
      aspect: #'view';
    yourself