as yet unclassified
trimStackTo: level
  "Assume to be sent after successful accept of new version of method"

  self trimmed: true.
  self process _trimStackToLevel: level.
  self resetFrames.
  self navigateFrame: 1.
  self refreshViews