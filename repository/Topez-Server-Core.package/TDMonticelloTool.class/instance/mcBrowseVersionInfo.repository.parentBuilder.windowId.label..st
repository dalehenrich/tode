as yet unclassified
mcBrowseVersionInfo: versionInfoBlock repository: aRepository parentBuilder: aParentBuilder windowId: aWindowId label: labelString
  ^ (TDVersionInfoBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    windowId: aWindowId;
    repository: aRepository;
    versionInfoBlock: versionInfoBlock;
    windowLabel: labelString;
    yourself) open