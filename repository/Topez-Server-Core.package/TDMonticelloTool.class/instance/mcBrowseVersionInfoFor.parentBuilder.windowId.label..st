as yet unclassified
mcBrowseVersionInfoFor: workingcopy parentBuilder: aParentBuilder windowId: aWindowId label: labelString
  ^ (TDVersionInfoBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    windowId: aWindowId;
    workingCopy: workingcopy;
    versionInfoBlock: [ workingcopy ancestry allAncestors ];
    windowLabel: labelString;
    yourself) open