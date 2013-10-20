as yet unclassified
mrBrowseRepositoryPackges: repository parentBuilder: aParentBuilder windowId: aWindowId label: labelString
  | browser |
  browser := TDRepositoryPackageBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    windowId: aWindowId;
    repository: repository;
    windowLabel: labelString;
    yourself.
  browser open.
  ^ browser packagesSpec