as yet unclassified
mcBrowseWorkingCopies: workingCopyBlock newPackageBlock: newPackageBlock parentBuilder: aParentBuilder windowLocation: windowLocation windowId: aWindowId label: labelString
  ^ (TDWorkingCopyBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    windowId: aWindowId;
    workingCopyBlock: workingCopyBlock;
    newPackageBlock: newPackageBlock;
    windowLocation: windowLocation;
    windowLabel: labelString;
    yourself) open