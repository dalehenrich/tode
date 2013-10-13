as yet unclassified
diffPatch: patch on: stream
  | diffy |
  diffy := MCDiffyTextWriter on: stream.
  diffy writePatch: patch