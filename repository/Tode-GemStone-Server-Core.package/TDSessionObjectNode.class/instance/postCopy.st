as yet unclassified
postCopy
  | transientValue |
  transientValue := contents.
  super postCopy.
  self basicContents: transientValue value copy