project api
projectLoad: projectName selector: projectSelector repositoryDescription: repositoryDescription className: className loads: loads version: version
  | projectLoadSpec |
  projectLoadSpec := TDMetacelloToolProjectLoadSpec new
    projectName: projectName;
    projectSelector: projectSelector;
    repositoryDescription: repositoryDescription;
    projectClassName: className;
    loads: loads;
    configurationVersion: version;
    yourself.
  ^ self basicProjectLoadFromSpec: projectLoadSpec