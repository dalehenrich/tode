initialization
configuration: name version: aString repository: repositoryDescription loads: loadStringOrCollection
  self
    projectSpec:
      ((MetacelloMCConfigurationOfProjectSpec for: MetacelloMCProject new)
        name: name;
        versionString: aString;
        repository: repositoryDescription username: '' password: '';
        loads: loadStringOrCollection;
        yourself)