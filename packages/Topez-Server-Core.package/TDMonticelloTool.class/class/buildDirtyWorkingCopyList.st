as yet unclassified
buildDirtyWorkingCopyList
  ^ self buildWorkingCopyList: (MCWorkingCopy allManagers select: [ :wc | wc modified ])