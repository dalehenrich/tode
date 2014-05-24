as yet unclassified
mcBrowseWorkingCopies: workingCopyBlock parentBuilder: aParentBuilder windowLocation: windowLocation windowId: aWindowId label: labelString
  ^ (TDWorkingCopyBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    windowId: aWindowId;
    workingCopyBlock: workingCopyBlock;
    windowLocation: windowLocation;
    windowLabel: labelString;
    yourself) open