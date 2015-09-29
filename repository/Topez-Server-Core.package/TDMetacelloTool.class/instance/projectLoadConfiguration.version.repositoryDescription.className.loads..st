project api
projectLoadConfiguration: projectName version: version repositoryDescription: repositoryDescription className: className loads: loads
  "required args plus reasonable defaults"

  | projectLoadSpec |
  projectLoadSpec := TDMetacelloToolProjectLoadSpec new
    projectName: projectName;
    projectSelector: #'configuration:';
    repositoryDescription: repositoryDescription;
    projectClassName: className;
    loads: loads;
    version: version;
    yourself.
  ^ self projectLoadFromSpec: projectLoadSpec