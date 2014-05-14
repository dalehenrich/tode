menu action specs
menuActionSpec: miniTool
  theMiniTool := miniTool.
  ^ {#('changes' nil #'imageDiffMenuAction:selectionIndex:' nil #'projectSelected' false).
  #('save' nil #'commitProjectMenuAction:selectionIndex:' nil #'projectSelected' false).
  #('-').
  #('load' nil #'loadProjectMenuAction:selectionIndex:' nil #'projectSelected' false).
  #('revert' nil #'revertProjectMenuAction:selectionIndex:' nil #'projectSelected' false).
  #('-').
  #('commit log' nil #'gitCommitLogMenuAction:selectionIndex:' nil #'gitProjectSelected' false).
  #('status' nil #'gitStatusMenuAction:selectionIndex:' nil #'gitProjectSelected' false).
  #('-')} , self standardMenuActionSpec