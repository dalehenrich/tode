as yet unclassified
mrBrowseRepositorGroup: workingCopy label: labelString
  (TDRepositoryBrowser new
    topez: topez;
    mcTool: self;
    workingCopy: workingCopy;
    repositories: workingCopy repositoryGroup repositories;
    windowLabel: labelString;
    yourself) open