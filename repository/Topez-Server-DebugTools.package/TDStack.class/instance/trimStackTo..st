as yet unclassified
trimStackTo: level
  self trimmed: true.
  self process _trimStackToLevel: level.
  self resetFrames.
  self navigateFrame: 1.
  self refreshViews