as yet unclassified
mrBrowseRepositories: repositoryBlock parentBuilder: aParentBuilder windowId: aWindowId label: labelString
  ^ (TDRepositoryBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    windowId: aWindowId;
    repositoryBlock: repositoryBlock;
    windowLabel: labelString;
    yourself) open