as yet unclassified
mcBrowseWorkingCopies: workingCopyBlock parentBuilder: aParentBuilder windowId: aWindowId label: labelString
  ^ (TDWorkingCopyBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    windowId: aWindowId;
    workingCopyBlock: workingCopyBlock;
    windowLabel: labelString;
    yourself) open