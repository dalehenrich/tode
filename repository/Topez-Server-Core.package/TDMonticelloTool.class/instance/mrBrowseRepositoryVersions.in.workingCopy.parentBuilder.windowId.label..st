as yet unclassified
mrBrowseRepositoryVersions: versions in: repository workingCopy: wc parentBuilder: aParentBuilder windowId: aWindowId label: labelString
  ^ (TDRepositoryVersionsBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    windowId: aWindowId;
    workingCopy: wc;
    versions: versions;
    repository: repository;
    windowLabel: labelString;
    yourself) open