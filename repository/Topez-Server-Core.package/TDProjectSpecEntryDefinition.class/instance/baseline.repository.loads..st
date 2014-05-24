initialization
baseline: name repository: repositoryDescription loads: loadStringOrCollection
  self
    projectSpec:
      ((MetacelloMCBaselineOfProjectSpec for: MetacelloMCBaselineProject new)
        name: name;
        repository: repositoryDescription username: '' password: '';
        loads: loadStringOrCollection;
        yourself)