project api
projectLoad: projectName selector: projectSelector repositoryDescription: repositoryDescription className: className loads: loads version: version
  | projectLoadSpec |
  projectLoadSpec := TDMetacelloToolProjectLoadSpec new
    projectLoad: projectName;
    projectSelector: projectSelector;
    description: repositoryDescription;
    className: className;
    loads: loads;
    version: version;
    yourself.
  ^ self projectLoadFromSpec: projectLoadSpec