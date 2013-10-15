as yet unclassified
mrBrowseRepositoryPackges: repository label: labelString
  | browser |
  browser := TDRepositoryPackageBrowser new
    topez: topez;
    mcTool: self;
    repository: repository;
    windowLabel: labelString;
    yourself.
  browser open.
  ^ browser packagesSpec