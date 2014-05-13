menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('commit' nil #'commitProjectMenuAction:selectionIndex:' nil #'projectSelected' false).
  #('-').
  #('commit log' nil #'gitCommitLogMenuAction:selectionIndex:' nil #'gitProjectSelected' false).
  #('image changes' nil #'imageDiffMenuAction:selectionIndex:' nil #'projectSelected' false)}