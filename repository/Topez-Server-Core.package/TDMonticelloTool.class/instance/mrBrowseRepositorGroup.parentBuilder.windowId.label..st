as yet unclassified
mrBrowseRepositorGroup: workingCopy parentBuilder: aParentBuilder windowId: aWindowId label: labelString
  ^ (TDRepositoryBrowser new
    topez: topez;
    mcTool: self;
    parentBuilder: aParentBuilder;
    windowId: aWindowId;
    workingCopy: workingCopy;
    repositoryBlock: [ workingCopy repositoryGroup repositories ];
    windowLabel: labelString;
    yourself) open