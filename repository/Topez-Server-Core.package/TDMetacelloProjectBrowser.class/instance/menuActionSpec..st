menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('image diffs' nil #'imageDiffMenuAction:selectionIndex:' nil #'projectSelected' false).
  #('commit' nil #'commitProjectMenuAction:selectionIndex:' nil #'projectSelected' false).
  #('-').
  #('commit log' nil #'gitCommitLogMenuAction:selectionIndex:' nil #'gitProjectSelected' false)}