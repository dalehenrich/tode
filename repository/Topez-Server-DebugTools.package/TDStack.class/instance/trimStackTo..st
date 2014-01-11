as yet unclassified
trimStackTo: level
  self process _trimStackToLevel: level.
  self resetFrames.
  self navigateFrame: 1.
  self refreshViews