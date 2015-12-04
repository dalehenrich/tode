project api
projectLoadConfiguration: projectName version: version repositoryDescription: repositoryDescription className: className loads: loads registration: registration
  "required args plus reasonable defaults"

  | projectLoadSpec |
  projectLoadSpec := TDMetacelloToolProjectLoadSpec new
    projectName: projectName;
    projectSelector: #'configuration:';
    repositoryDescription: repositoryDescription;
    projectClassName: className;
    loads: loads;
    configurationVersion: version;
    yourself.
  ^ self projectLoadFromSpec: projectLoadSpec registration: registration