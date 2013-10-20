as yet unclassified
mrBrowseRepositoryVersions: versions in: repository parentBuilder: aParentBuilder windowId: aWindowId label: labelString
  ^ (TDRepositoryVersionsBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    windowId: aWindowId;
    versions: versions;
    repository: repository;
    windowLabel: labelString;
    yourself) open