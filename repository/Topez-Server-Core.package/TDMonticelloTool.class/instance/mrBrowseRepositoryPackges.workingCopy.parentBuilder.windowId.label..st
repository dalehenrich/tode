as yet unclassified
mrBrowseRepositoryPackges: repository workingCopy: wc parentBuilder: aParentBuilder windowId: aWindowId label: labelString
  | browser |
  browser := TDRepositoryPackageBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    workingCopy: wc;
    windowId: aWindowId;
    repository: repository;
    windowLabel: labelString;
    yourself.
  browser open.
  ^ browser packagesSpec